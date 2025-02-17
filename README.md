> **Important:** This is a template repository to help you set up your team project.  
>  
> You are free to modify it based on your needs. For example, if your data is downloaded using *multiple* scripts instead of a single one (as shown in `\data\`), structure the code accordingly. The same applies to all other starter files—adapt or remove them as needed.  
>  
> Feel free to delete this text.


# The Telecom Merger Effect: Market Share & Consumer Shifts
This project analyzes the effects of the 2020 merger between T-Mobile and Sprint 
on the U.S telecommunications market. More concretely, it examines how the merger 
influenced market share distributions among the four major competitors (AT&T, Verizon, T-Mobile, and Sprint) 
and the consumer conversion rates between providers (the switching behavior of consumers between providers). 
By using empirical data, this study aims to provide insights into post-merger market dynamics, helping asses whether the merger 
led to significant structural changes in competition and consumer behavior. 

## Motivation

**Background and motivation**
The U.S. telecommunications industry is highly concentrated, with a few dominant 
firms controlling the market. In 2020, the merger between T-Mobile and Sprint reduced 
the number of major competitors from four to three, raising concerns about potential 
market power consolidation, price changes, and consumer choice. The Federal 
Communications Commission (FCC) and the Department of Justice (DOJ) approved the 
merger under the assumption that it would enhance competition and benefit consumers. 
However, its real-world effects remain unstudied. 

Understanding the impact of this merger has several implications. First, the merger 
may have affected conversion rates, affecting consumer retention. Second, fewer competitors
in this market may have shifted market dynamics, influencing consumers. Third, regulators
need empirical evidence to asses whether the approval of the merger led to the intended outcomes.
Lastly, insights from this study can help telecom companies and future entrants make data-driven 
strategic decisions. 

**Research Question**

How did the 2020 merger between T-Mobile and Sprint impact market share distribution and consumer conversion rates in the U.S. telecommunications market?

## Data
The data comes from three data sources. 

1. Parquet files: including T-Mobile, Sprint, AT&T, and Verizon user data per CBSA (Core-Based Statistical Areas). 
This data was obtained from other researchers involved in the project.

Number of Observations: TBD

table of variable description/operstionalisation: TBD

| Variable                | Description                                      |
|-------------------------|--------------------------------------------------|
|                     |                         |
|      |                        |



2. Form 477 data: technology data from the Federal Communications Commission that 
shows the total coverage per technology per CBSA per merchant. This is public data available online: https://www.fcc.gov/general/broadband-deployment-data-fcc-form-477. 

Number of Observations: TBD

table of variable description/operstionalisation: TBD

| Variable                | Description                                      |
|-------------------------|--------------------------------------------------|
|                     |                         |
|      |     

3. Safegraph data: this is retail store data that shows the number of stores for a given brand, 
along with relevant metadata such as where the store is located, when it opened, the number of stores available. 
This data was obtained with the collaborators working on this project. 

Number of Observations: TBD

table of variable description/operstionalisation: TBD

| Variable                | Description                                      |
|-------------------------|--------------------------------------------------|
|                     |                         |
|      |     

## Method
To analyze the impact of the T-Mobile and Sprint merger on the U.S. telecommunications market, I will use a Fixed Effects (FE) regression model. This approach allows us to control for unobserved heterogeneity across different geographic regions and time periods. 

The primary regression model is specified as follows:

MarketShare_{i, c, t} = β_0 + β_1 MergerDate_t + Γ TechnologyControls_{i, t} + δ_c + λ_t + ε_{i, c, t}


And

ConsumerConversionRatio_{j, c, t} = β_0 + β_1 MergerDate_t + Γ TechnologyControls_{j, t} + δ_c + λ_t + ε_{j, c, t}


Where:
- `MarketShare_{i, c, t}` = Market share of company `i` in CBSA `c` at time `t`.
- `ConsumerConversionRatio_{i, c, t}` = Loss conversion ratio `i` in CBSA `c` at time `t`.
- `MergerDate_t` = Indicator variable that equals 1 after the T-Mobile/Sprint merger date and 0 otherwise.
- `TechnologyControls_{i, t}` = A set of controls accounting for differences in network technologies (e.g., 4G, 5G deployment).
- `δ_c` = CBSA Fixed Effects to control for region-specific factors.
- `λ_t` = Monthly Fixed Effects to account for time trends and seasonality.
- `ε_{i, c, t}` = The error term capturing unexplained variation.

**Why this model?**
I choose the Fixed Effects (FE) approach for the following reasons:
1. **Controls for Regional Differences**: Different CBSAs may have unique market conditions, and including CBSA Fixed Effects (`δ_c`) helps eliminate bias from these differences.
2. **Accounts for Time Trends**: Monthly Fixed Effects (`λ_t`) control for external shocks, such as economic conditions or industry-wide changes in pricing strategies.
3. **Distinguishes Causal Impact of the Merger**: The inclusion of a Merger Date dummy (\(`MergerDate_t`) allows to assess whether market share significantly changed after the merger.
4. **Technology Controls**: Network improvements, such as the rollout of 5G, may independently affect market share, so I include technology variables to avoid confounding effects.


## Preview of Findings 
- Describe the gist of your findings (save the details for the final paper!)
- How are the findings/end product of the project deployed?
- Explain the relevance of these findings/product. 

## Repository Overview 

**Include a tree diagram that illustrates the repository structure*

## Dependencies 

*Explain any tools or packages that need to be installed to run this workflow.*

## Running Instructions 

*Provide step-by-step instructions that have to be followed to run this workflow.*

## About 

This project is set up as part of the Master's course [Data Preparation & Workflow Management](https://dprep.hannesdatta.com/) at the [Department of Marketing](https://www.tilburguniversity.edu/about/schools/economics-and-management/organization/departments/marketing), [Tilburg University](https://www.tilburguniversity.edu/), the Netherlands.

The project is implemented by team < x > members: < insert member details>
