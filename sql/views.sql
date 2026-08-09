-- Gas dependency: gas share of total generation, by year
CREATE VIEW nigeria_energy_project.gas_dependency AS
SELECT year,
       gas_electricity,
       electricity_generation,
       ROUND((gas_electricity / electricity_generation) * 100, 2) AS gas_share_pct
FROM nigeria_energy_project.nigeria_energy_mix;

-- Full fuel mix trend, by year
CREATE VIEW nigeria_energy_project.fuel_mix_trend AS
SELECT year, coal_electricity, gas_electricity, oil_electricity,
       hydro_electricity, solar_electricity, wind_electricity,
       renewables_electricity, fossil_electricity
FROM nigeria_energy_project.nigeria_energy_mix;

-- Renewables' share of electricity generation, by year
CREATE VIEW nigeria_energy_project.renewables_trend AS
SELECT year, renewables_share_elec
FROM nigeria_energy_project.nigeria_energy_mix;

-- Electricity access percentage, by year
CREATE VIEW nigeria_energy_project.access_trend AS
SELECT year, Electricity_Access_Percent
FROM nigeria_energy_project.nigeria_electricity_access;

-- Combined view for cross-checking overlapping years (2000-2024)
CREATE VIEW nigeria_energy_project.combined_overview AS
SELECT m.year, m.electricity_generation, m.gas_electricity,
       m.renewables_share_elec, a.Electricity_Access_Percent
FROM nigeria_energy_project.nigeria_energy_mix m
JOIN nigeria_energy_project.nigeria_electricity_access a
  ON m.year = a.year;
