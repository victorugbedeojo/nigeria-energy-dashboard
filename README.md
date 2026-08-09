# Nigeria Energy Mix Dashboard

Power BI dashboard analyzing Nigeria's electricity generation mix, electrification access, and gas dependency — built as an investment-advisory style analysis (Excel → MySQL → Power BI pipeline).

## Business Questions
- How dependent is Nigeria's electricity supply on gas, and what risk does that create?
- Is installed generation capacity growing faster than actual available capacity?
- How has electrification access changed since 1990, and how large is the remaining gap?
- How close is Nigeria to its own 2030 renewable energy target ("30:30:30")?
- Where are decentralized mini-grid projects filling gaps the national grid hasn't reached?

## Pipeline
1. *Excel* — cleaned and filtered raw World Bank and OWID datasets down to Nigeria-only rows
2. *MySQL* — built 5 analytical views (gas_dependency, fuel_mix_trend, renewables_trend, access_trend, combined_overview)
3. *Power BI* — connected via ODBC, built KPI cards, trend charts, a fuel-mix donut, a map of power generation sites, and insight panels

## Key Findings
- Gas dependency rose from ~62% (2000) to ~69% (latest year)
- Electricity access grew from ~27% (1990) to ~62.5%, but ~85 million Nigerians still lack access
- Renewables sit at ~31% of generation, below the government's 30:30:30 target
- Installed capacity (14 GW) far exceeds average available capacity (~4.1 GW)

## Data Sources
- World Bank Open Data (SDG7 electrification indicator) — CC BY 4.0
- Our World in Data (OWID) Energy Dataset — CC BY
- IEA Nigeria Country Profile — cited for reference figures only

## Limitations
Renewables' share of total energy supply was not available for Nigeria in the OWID dataset; renewables' share of electricity generation was used instead.
