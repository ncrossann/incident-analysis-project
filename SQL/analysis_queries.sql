-- Incident Analysis Dashboard
-- Author: Niamh Crossan
-- Purpose: Analyse production support incidents and identify operational trends, recurring root causes and performance metrics

-- Total Incidents
SELECT COUNT(*) AS Total_Incidents FROM incidents;

-- Incidents by Application
SELECT Application, COUNT(*) AS Incident_Count FROM incidents GROUP BY Application ORDER BY Incident_Count DESC;

-- Incidents by Root Cause
SELECT Root_Cause, COUNT(*) AS Incident_Count FROM incidents GROUP BY Root_Cause ORDER BY Incident_Count DESC;

-- Average Resolution Time by Severity
SELECT Severity, ROUND(AVG(Resolution_Hours),2) AS Avg_Resolution_Time FROM incidents GROUP BY Severity;

-- Daily Incident Volume
SELECT Date, COUNT(*) AS Daily_Incidents FROM incidents GROUP BY Date ORDER BY Date;