# 🏅 Olympische Spiele — Database & Analytics

**Autor:** Liliia Rastorhuieva  
**Datenbank:** MySQL  
**Sprache:** SQL  
**Status:** 📊 Abgeschlossen

---

## 📌 Projektbeschreibung  
Dieses Projekt ist eine relationale Datenbank zur Analyse der Olympischen Spiele. Die Datenbank bildet zentrale Informationen ab, wie Athleten, Länder, Sportarten, Events und Medaillen.

Ziel ist es, die Struktur der Spiele verständlich zu modellieren und analytisch auswertbar zu machen.

---

## 🗂️ Projektaufgaben  
- Entwurf eines vollständigen Entity-Relationship-Diagramms (ERD) für eine normalisierte Datenstruktur.
- Erstellung einer Arbeitsversion der Datenbank mit 4 Kern-Tabellen für den praktischen Import und die Analyse.
- Durchführung von SQL-Abfragen zur Auswertung der Olympiadaten.

---

## 🎯 Hauptziele des Projekts  
✅ Entwurf eines normalisierten Schemas (ERD)  
✅ Arbeit mit Relationen (FOREIGN KEY, JOINs)  
✅ Import und Pflege realer Daten (CSV/Excel)  
✅ Erstellung analytischer SQL-Abfragen  
✅ Praxis mit DDL (CREATE, ALTER) und DML (INSERT, UPDATE, DELETE)

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

---

## 🧩 Tech-Stack  
- **Datenbank:** MySQL  
- **Tools:** MySQL Workbench, Excel/Google Sheets  
- **Sprache:** SQL (DDL, DML, DCL)

---

## 📈 Warum dieses Projekt wichtig ist  
✅ Zeigt Fähigkeit zur Modellierung realer Prozesse  
✅ Belegt praktischen Umgang mit Normalisierung und Fremdschlüsseln  
✅ Enthält Business-relevante Analysen  
✅ Eignet sich als Referenz für Bewerbungen im Data-Bereich

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
