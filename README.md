# 🏅 Olympische Spiele — Database & Analytics

**Autor:** Liliia Rastorhuieva  
**Datenbank:** MySQL  
**Technologien:** MySQL, SQL, Python (Streamlit) 
**Status:** 📊 Abgeschlossen

---

## 📌 Projektbeschreibung  
Dieses Projekt ist eine relationale Datenbank zur Analyse der Olympischen Spiele. Die Datenbank bildet zentrale Informationen ab, wie Athleten, Länder, Sportarten, Events und Medaillen.

Ziel ist es, die Struktur der Spiele verständlich zu modellieren und analytisch auswertbar zu machen.

---

## 📊 Streamlit Dashboard zur Datenvisualisierung

Zusätzlich zum SQL-Projekt wurde ein interaktives Dashboard mit Streamlit entwickelt, um die Olympischen Spieldaten visuell und interaktiv zu erkunden.

![Demo](./olympics_streamlit_dashboard/demo.GIF)

### Inhalt:
- Visualisierung von Athleten, Ländern, Sportarten und Events
- Dynamische Diagramme mit Plotly
- Datenimport aus CSV-Dateien
- Benutzerfreundliche Oberfläche zur Datenanalyse
  
### Ordnerstruktur für die Visualisierung:
- `streamlit_dashboard/app.py` — Hauptanwendung
- `streamlit_dashboard/requirements.txt` — benötigte Python-Bibliotheken
- `streamlit_dashboard/` — CSV-Daten, die vom Dashboard genutzt werden

### Starten der App:
1. Umgebung mit `pip install -r streamlit_dashboard/requirements.txt` vorbereiten  
2. Streamlit-App starten mit:  
   ```bash
   streamlit run streamlit_dashboard/app.py

---

## 🗂️ Projektaufgaben  
- Entwurf eines vollständigen Entity-Relationship-Diagramms (ERD) für eine normalisierte Datenstruktur.
- Erstellung einer Arbeitsversion der Datenbank mit 4 Kern-Tabellen für den praktischen Import und die Analyse.
- Durchführung von SQL-Abfragen zur Auswertung der Olympiadaten.
- Entwicklung eines interaktiven Dashboards mit Streamlit zur Visualisierung der Analyseergebnisse.

---

## 🎯 Hauptziele des Projekts 
✅ Entwurf eines normalisierten Schemas (ERD)  
✅ Arbeit mit Relationen (FOREIGN KEY, JOINs)  
✅ Import und Pflege realer Daten (CSV/Excel)  
✅ Erstellung analytischer SQL-Abfragen  
✅ Praxis mit DDL (CREATE, ALTER) und DML (INSERT, UPDATE, DELETE)
✅ Entwicklung eines interaktiven Dashboards mit Streamlit

---

## 📌 Hinweis zur Struktur  
👉 **ERD vs. reale Datenbank**

Das Projekt umfasst ein vollständiges ERD mit mehreren Entitäten (*Athlet*, *Land*, *Sportart*, *Event*, *Medaille*, *Teilnahme*), um die vollständige Logik der Olympischen Spiele abzubilden.  
Die umgesetzte Datenbank enthält davon eine reduzierte Version mit 4 Kern-Tabellen, um reale Daten aus CSV-Dateien zu importieren und SQL-Abfragen praxisnah zu demonstrieren.

Diese Trennung zeigt den Unterschied zwischen Konzept (vollständig normalisierte Struktur) und einer minimalen, lauffähigen Arbeitsversion.

---

## 🗂️ Tabellen in der Arbeitsversion  
| Tabelle   | Beschreibung                  |
|-----------|--------------------------------|
| Athlet    | Athleten-Daten                |
| Land      | Länderinformationen           |
| Sportart  | Disziplinen der Spiele        |
| Event     | Einzelne Wettkämpfe/Events    |

**In der erweiterten ERD-Version zusätzlich enthalten:**  
- Medaille — Medaillentypen  
- Teilnahme — Zuordnung Athlet/Event/Medaille

---

## 🔍 Beispielhafte Analysen  
Das Projekt umfasst Abfragen wie:  
- Anzahl der Athleten pro Land  
- Durchschnittsalter pro Sportart  
- Medaillenspiegel-Analysen (in ERD-Logik)  
- Auswertung von Events nach Geschlecht oder Jahr

---

## ⚙️ Was ich geübt habe  
✔️ Normalisierung und Entwurf komplexer Datenmodelle  
✔️ Arbeit mit relationalen Verknüpfungen (FOREIGN KEY)  
✔️ Import von Daten aus Excel/CSV in MySQL  
✔️ Komplexe SQL-Analysen (JOIN, GROUP BY, Subqueries, Aggregationen)  
✔️ DDL und DML-Befehle in der Praxis
✔️ Visualisierung von Daten mit Streamlit, Plotly und Pandas
✔️ Erstellung eines interaktiven Dashboards

---

## 🧩 Tech-Stack  
- **Datenbank:** MySQL  
- **Tools:** MySQL Workbench, Excel/Google Sheets, Streamlit  
- **Sprache:** SQL (DDL, DML, DCL)

---

## 📈 Warum dieses Projekt wichtig ist  
✅ Zeigt Fähigkeit zur Modellierung realer Prozesse  
✅ Belegt praktischen Umgang mit Normalisierung und Fremdschlüsseln  
✅ Enthält Business-relevante Analysen  
✅ Eignet sich als Referenz für Bewerbungen im Data-Bereich  
✅ Demonstriert praktische Visualisierung mit Python & Streamlit  
✅ Verbindet Datenbank und interaktive Auswertung in einem Projekt

---

## 🚀 So startest du  
1️⃣ Struktur und Basistabellen erstellen:  
`olympische_spiele_datenbank.sql`

2️⃣ Analysen durchführen:  
`olympische_spiele_queries.sql`

---

## 📚 Zum Projekt  
Erstellt für Lernzwecke. Zeigt, wie man ein reales Szenario in SQL abbildet — vom ERD über Tabellen bis zu Abfragen.

---

## 💡 Autor  
**Liliia Rastorhuieva**  
📧 lilyrastorhuieva@gmail.com
