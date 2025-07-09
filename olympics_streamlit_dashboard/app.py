import streamlit as st
import pandas as pd
import plotly.express as px

# Titel der Anwendung
st.title("🏅 Olympische Spiele Dashboard")

# Laden der CSV-Dateien mit Caching
@st.cache_data
def load_data():
    athletes = pd.read_csv("athletes.csv", sep=';')
    events = pd.read_csv("events.csv", sep=';')
    countries = pd.read_csv("countries.csv", sep=';')
    athlete_event = pd.read_csv("athlete_event.csv", sep=';')
    return athletes, events, countries, athlete_event

athletes, events, countries, athlete_event = load_data()

# Zusammenführen der Tabellen (JOIN)
merged = athlete_event \
    .merge(athletes, on="Athlete_ID") \
    .merge(events, on="Event_ID") \
    .merge(countries, on="NOC")

# Sidebar mit Filtern
st.sidebar.header("🔍 Filter")
selected_country = st.sidebar.selectbox(
    "Land wählen",
    options=sorted(merged["Country"].dropna().unique())
)

selected_year = st.sidebar.selectbox(
    "Jahr wählen",
    options=sorted(merged["Year"].dropna().unique())
)

selected_medal = st.sidebar.multiselect(
    "Medaillentyp wählen",
    options=merged["Medal"].dropna().unique(),
    default=merged["Medal"].dropna().unique()
)

# Filterung der Daten
filtered = merged[
    (merged["Country"] == selected_country) &
    (merged["Year"] == selected_year) &
    (merged["Medal"].isin(selected_medal))
]

# Ausgabe der Haupttabelle mit angewendeten Filtern
st.write(f"### Ergebnisse für {selected_country} im Jahr {selected_year} mit Medaillen: {', '.join(selected_medal)}")
st.dataframe(filtered)

# Auswertung und Visualisierung der Medaillen
medal_count = filtered.groupby("Medal").size().reset_index(name="Anzahl").sort_values(by="Anzahl", ascending=False)

st.write("### 🏆 Medaillenverteilung")
fig = px.bar(
    medal_count,
    x="Medal",
    y="Anzahl",
    color="Medal",
    title=f"Medaillen für {selected_country} im Jahr {selected_year}",
    labels={"Medal": "Medaille", "Anzahl": "Anzahl"},
    color_discrete_map={"Gold": "gold", "Silver": "silver", "Bronze": "#cd7f32"},
    hover_data={"Anzahl": True, "Medal": True}
)
st.plotly_chart(fig, use_container_width=True)

# Verteilung der Athleten nach Alter und Medaillen
st.write("### 👥 Altersverteilung der Athleten nach Medaillen")
age_medal_fig = px.box(
    filtered,
    x="Medal",
    y="Age",
    color="Medal",
    title="Altersverteilung pro Medaille",
    labels={"Age": "Alter", "Medal": "Medaille"},
    color_discrete_map={"Gold": "gold", "Silver": "silver", "Bronze": "#cd7f32"},
    hover_data=["Name", "Sport"]
)
st.plotly_chart(age_medal_fig, use_container_width=True)

st.markdown("---")

# Neue Visualisierung: Top 10 Länder nach Athletenanzahl im gewählten Jahr
st.write(f"### 🌍 Top 10 Länder nach Athletenanzahl im Jahr {selected_year}")
athletes_count_by_country = merged[merged["Year"] == selected_year].groupby("Country")["Athlete_ID"].nunique().reset_index()
top_countries = athletes_count_by_country.sort_values(by="Athlete_ID", ascending=False).head(10)
fig_top_countries = px.bar(
    top_countries,
    x="Country",
    y="Athlete_ID",
    title=f"Top 10 Länder nach Athletenanzahl im Jahr {selected_year}",
    labels={"Country": "Land", "Athlete_ID": "Anzahl Athleten"},
    text="Athlete_ID"
)
fig_top_countries.update_traces(textposition='outside')
st.plotly_chart(fig_top_countries, use_container_width=True)

st.markdown("---")

# Medaillentrend über die Jahre für das ausgewählte Land
st.write(f"### 📈 Medaillentrend für {selected_country} über die Jahre")
medals_over_years = merged[
    (merged["Country"] == selected_country) & (merged["Medal"].notnull())
].groupby(["Year", "Medal"]).size().reset_index(name="Anzahl")

fig_trend = px.line(
    medals_over_years,
    x="Year",
    y="Anzahl",
    color="Medal",
    title=f"Medaillentrend für {selected_country} über die Jahre",
    labels={"Year": "Jahr", "Anzahl": "Anzahl Medaillen", "Medal": "Medaille"},
    color_discrete_map={"Gold": "gold", "Silver": "silver", "Bronze": "#cd7f32"},
    markers=True
)
st.plotly_chart(fig_trend, use_container_width=True)

st.markdown("---")

# Vorschau aller Tabellen per Checkbox, um UI nicht zu überladen
if st.checkbox("📋 Vorschau aller Tabellen anzeigen"):
    st.subheader("Athleten")
    st.dataframe(athletes.head())

    st.subheader("Events")
    st.dataframe(events.head())

    st.subheader("Länder")
    st.dataframe(countries.head())

    st.subheader("Athleten-Events")
    st.dataframe(athlete_event.head())

    st.subheader("Verbundene Daten (Join)")
    st.dataframe(merged.head())

st.success("✅ Dashboard erfolgreich geladen mit interaktiven Visualisierungen!")
