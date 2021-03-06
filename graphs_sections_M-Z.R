#Jaime Villacampa August 2017
#Syntax to create plotly graphics and upload them to plotly site
#Sections starting with a M until a Z.

############################.
### Packages, functions and plot parameters----
############################.
source("./plotly_chart_functions.r")

############################.
### Migration----
############################.
multiline(filepath="Migration/migration_scottish_chart1", 
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 1. Scottish migration trends: <br>natural change and net migration", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/migration'>NRS</a>", 
          xaxtitle="Year", yaxtitle="Change in population")

onebar(filepath="Migration/migration_board_chart1", 
       xvar="class1", yvar="measure",
       title="Chart 1. Net migration by NHS board, 2015-16", 
       sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/migration'>NRS</a>", 
       xaxtitle="Health board", yaxtitle="Population")

onebar(filepath="Migration/migration_la_chart1", 
       xvar="class1", yvar="measure",
       title="Chart 1. Net migration by council, 2015-16", 
       sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/migration'>NRS</a>", 
       xaxtitle="Council", yaxtitle="Population")

############################.
### Multiple sclerosis----
############################.
#primary care
stackedbar(filepath="Multiple Sclerosis/ms_primcare_chart1", 
           xvar="class2", yvar="measure", group="class1", pal_col = palnogroups,
           title="Chart 1. Estimated number of consultations for<br> multiple sclerosis by staff type, Scotland ", 
           sourc="<a href='http://www.isdscotland.org/Health-Topics/General-Practice/GP-consultations/'>ISD</a>. District nurse and health visitor data from 2006/07 onwards not available", 
           xaxtitle="Year", yaxtitle="Estimated number of consultations")

multibar(filepath="Multiple Sclerosis/ms_primcare_chart2", 
         xvar="class2", yvar="measure", group="class1", pal_col = palnogroups,
         title="Chart 2. Patients consulting GP/practice nurse at least<br> once a year for multiple sclerosis, Scotland, 2012/13", 
         sourc="<a href='http://www.isdscotland.org/Health-Topics/General-Practice/GP-consultations/'>ISD</a>", 
         xaxtitle='Age group', yaxtitle="Age-sex standarized rate<br> per 1,000 patients registered")

#secondary care
multiline(filepath="Multiple Sclerosis/ms_seccare_chart1", 
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 1. New cases (incidences) per 100,000 people with<br> a principal diagnosis of multiple sclerosis in Scotland", 
           sourc="<a href='http://www.isdscotland.org/'>ISD</a>; ICD10 code: G35, ICD9 code: 340", 
          xaxtitle="Year", yaxtitle="Age-sex standarised rate of <br>new cases per 100,000")

multiline(filepath="Multiple Sclerosis/ms_seccare_chart2", 
         xvar="class2", yvar="measure", group="class1", pal_col=pal3bysex,
         title="Chart 2. New cases (incidences) with a principal<br> diagnosis of multiple sclerosis, Scotland", 
         sourc="<a href='http://www.isdscotland.org/'>ISD</a>; ICD10 code: G35, ICD9 code: 340", 
         xaxtitle="Year", yaxtitle="Age-sex standarised rate of <br>new cases per 100,000")

multiline(filepath="Multiple Sclerosis/ms_mortality_chart1", 
         xvar="class1", yvar="measure", group="class2", pal_col=palbysexoverall,
         title="Chart 1. Deaths in Scotland where multiple sclerosis was<br>the underlying cause of death certificate, Scotland", 
         sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/vital-events-reference-tables'>NRS</a>; ICD10 code: G35, ICD9 code: 340", 
         xaxtitle='Year of registration', yaxtitle="Number of deaths")

############################.
### Obesity ----
############################.
#adults
multibar(filepath="Obesity/obesity_adults_Chart_1", 
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 1. Prevalence of obesity, Scotland, 2016", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='Age group', yaxtitle="Percentage")

multiline(filepath="Obesity/obesity_adults_Chart_2", 
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 2. Prevalence of obesity in <br>adults (16-64 years), Scotland", 
          sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
          xaxtitle='Year', yaxtitle="Percentage")

#children
multiline(filepath="Obesity/obesity_children_chart1", 
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 1. Children, aged 2-15 years, at risk of obesity, Scotland", 
          sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
          xaxtitle='Year', yaxtitle="Percentage")

multiline(filepath="Obesity/obesity_children_chart2", 
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 2. Children in Primary 1 at risk of obesity, Scotland", 
          sourc="<a href='http://www.isdscotland.org/Health-Topics/Child-Health/Child-Health-Programme/Child-Health-Systems-Programme-School.asp'>CHSP School</a>", 
          xaxtitle='Year', yaxtitle="Percentage")
#deprivation
multibar(filepath="Obesity/obesity_Deprivation_Chart_1", 
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 1. Adults obese and morbidly obese<br>by SIMD quintile, Scotland, 2016", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='SIMD quintile', yaxtitle="Percentage")

multibar(filepath="Obesity/obesity_Deprivation_Chart_2", 
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 2. Children obese and morbidly obese<br>by SIMD quintile, Scotland, 2016", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='SIMD quintile', yaxtitle="Percentage")

onebar(filepath="Obesity/obesity_Deprivation_Chart_3", 
         xvar="class1", yvar="measure", 
         title="Chart 3. Children in Primary 1 at risk<br> of obesity, Scotland, 2015/16", 
       sourc="<a href='http://www.isdscotland.org/Health-Topics/Child-Health/Child-Health-Programme/Child-Health-Systems-Programme-School.asp'>CHSP School</a>", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")

#international
#Maybe a good example worth try subplotting
barcompar(filepath="Obesity/obesity_International - Chart 1", 
         xvar="class1", yvar="measure", comparator="scotland_2016", compname="Scotland (2016)",
         title="Chart 1. Prevalence of obesity in men by country", 
       sourc="<a href='http://stats.oecd.org/index.aspx?DataSetCode=HEALTH_STAT'>OECD: StatsExtract</a>", 
       xaxtitle='Country', yaxtitle="Percentage")

barcompar(filepath="Obesity/obesity_International - Chart 2", 
         xvar="class1", yvar="measure", comparator="scotland_2016", compname="Scotland (2016)",
       title="Chart 2. Prevalence of obesity in women by country", 
       sourc="<a href='http://stats.oecd.org/index.aspx?DataSetCode=HEALTH_STAT'>OECD: StatsExtract</a>", 
       xaxtitle='Country', yaxtitle="Percentage")

############################.
### Older People ----
############################.
multibar(filepath="Older People/Older People - Chart 1", 
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 1. Population aged 60 and over, Scotland, 2016", 
         sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-estimates'>NRS</a>", 
         xaxtitle='Age', yaxtitle="Population")

#legend overlay in Plotly
multiline(filepath="Older People/Older People - Chart 2", 
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 2. Pensioners living in households<br> of below average income, Scotland", 
          sourc="<a href='https://www.gov.uk/government/collections/households-below-average-income-hbai--2'>HBAI</a>, <a href='https://www.gov.uk/government/organisations/department-for-work-pensions'>DWP</a>", 
          xaxtitle='Year', yaxtitle="Estimated percentage")

############################.
### Oral Health----
############################.
oneline(filepath="Oral Health/oral_adulttrend_chart1", 
           xvar="class1", yvar="measure", 
           title="Chart 1. Adults with no natural teeth, Scotland", 
           sourc="<a href='http://content.digital.nhs.uk/article/3894/Adult-Dental-Health-Survey'>Adult Dental Health Survey</a> & <a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
           xaxtitle="Year", yaxtitle="Percentage")

onebar(filepath="Oral Health/oral_adulttrend_chart2", 
       xvar="class1", yvar="measure", 
       title="Chart 2. Adults with no natural teeth, Scotland, 2014", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")

############################.
### Physical activity ----
############################.
#adults
multibar(filepath="Physical activity/pa_agegender_csv_Chart_1", 
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 1. Adults achieving physical activity recommendations <br> by age and sex, Scotland, 2016", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='Age group', yaxtitle="Percentage")

multibar(filepath="Physical activity/pa-adults-muscle-agegender-chart2", 
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 2. Adults achieving physical activity recommendations,<br> including muscle strengthening activities per week, Scotland, 2016", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='Age group', yaxtitle="Percentage")

multibar(filepath="Physical activity/pa_adults_SIMD_csv_Chart_3", 
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 3. Adults achieving physical activity<br> recommendations, by SIMD quintile, 2016", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='SIMD quintile', yaxtitle="Percentage")

multiline(filepath="Physical activity/pa-adults-timetrend-chart4", 
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 4. Adults meeting old and new <br>physical activity recommendations, Scotland", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='Year', yaxtitle="Percentage")

#children
multibar(filepath="Physical activity/pa_child_agegender_csv_Chart_1", 
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 1. Children between 2-15 years old meeting<br> physical activity recommendations per week, Scotland, 2016", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='Age group', yaxtitle="Percentage")

multibar(filepath="Physical activity/pa_childrenSIMD_csv_Chart_2", 
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 2. Children between 2-15 years old meeting<br> physical activity recommendations last week, Scotland, 2016", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='SIMD quintile', yaxtitle="Percentage")

multiline(filepath="Physical activity/pa_childrentrend_csv_Chart_3", 
         xvar="class2", yvar="measure", group="class1", pal_col=palbysexoverall,
         title="Chart 3. Children between 0-16 years old meeting<br> physical activity recommendations, Scotland", 
         sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
         xaxtitle='Year', yaxtitle="Percentage")

multibar(filepath="Physical activity/pa_children_international_chart4", 
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 4. Girls and boys aged 15 meeting recommended<br> levels of physical activity in HSBC countries, 2013/14", 
         sourc="<a href='http://www.hbsc.org/'>Health Behaviour in School-aged Children Survey</a>", 
         xaxtitle='Country', yaxtitle="Percentage")

############################.
### Physical environment ----
############################.
#active travel
stackedbar(filepath="Physical environment/Active travel - Chart 1", 
           xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
           title="Chart 1. Journeys made by main mode of transport", 
           sourc="<a href='https://www.transport.gov.scot/publication/26-september-2017-transport-and-travel-in-scotland-2016/'>Transport Scotland</a>", 
           xaxtitle="Year", yaxtitle="Percentage journeys made")

#environmental justice
onebar(filepath="Physical environment/environmental_justice_chart1", 
       xvar="class1", yvar="measure", 
       title="Chart 1. Population within 1 km of an IPCC site*, Scotland", 
       sourc="<a href='http://eprints.staffs.ac.uk/1828/'>Fairburn et al. 2005</a><br> *sites falling within the scope of the Industrial Pollution Prevention and Control directive", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")

onebar(filepath="Physical environment/environmental_justice_chart2", 
       xvar="class1", yvar="measure", 
       title="Chart 2. Population within 1 km of derelict land, Scotland", 
       sourc="<a href='http://eprints.staffs.ac.uk/1828/'>Fairburn et al. 2005</a>", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")

onebar(filepath="Physical environment/environmental_justice_chart3", 
       xvar="class1", yvar="measure", 
       title="Chart 3. Population within 1km of a river<br> with poor/polluted water quality, Scotland", 
       sourc="<a href='http://eprints.staffs.ac.uk/1828/'>Fairburn et al. 2005</a>", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")

#green spaces
onebar(filepath="Physical environment/Greenspace SIMD - Chart 1", 
       xvar="class1", yvar="measure", 
       title="Chart 1. Adults living within a 5 minute walk <br> of greenspace, Scotland, 2016", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/16002'>Scottish Household Survey</a>", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")

onebar(filepath="Physical environment/Greenspace SIMD - Chart2", 
       xvar="class1", yvar="measure", 
       title="Chart 2. Adults satisfied with local <br>greenspace, Scotland, 2016", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/16002'>Scottish Household Survey</a>", 
       xaxtitle='SIMD quintile', yaxtitle="Percentage")

#housing
onebar(filepath="Physical environment/Housing failing standard - Chart 1", 
       xvar="class1", yvar="measure", 
       title="Chart 1. Dwellings failing the Scottish <br>Housing Quality Standard by tenure, 2014", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/SHCS'>Scottish House Condition Survey</a>", 
       xaxtitle='Housing tenure', yaxtitle="Percentage")

onebar(filepath="Physical environment/Housing overcrowded - Chart 2", 
       xvar="class1", yvar="measure", 
       title="Chart 2. Households overcrowded as defined by<br>the bedroom standard by tenure, Scotland, 2014", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/SHCS'>Scottish House Condition Survey</a>", 
       xaxtitle='Housing tenure', yaxtitle="Percentage")

#maintenance
onebar(filepath="Physical environment/Maintenance - Chart 1", 
       xvar="class1", yvar="measure", 
       title="Chart 1. Adults saying that rubbish/litter is very/fairly <br>common in their neighbourhood, Scotland, 2016", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/16002'>Scottish Household Survey</a>", 
       xaxtitle='SIMD decile', yaxtitle="Percentage")

#traffic
oneline(filepath="Physical environment/Traffic - Chart 1", 
       xvar="class1", yvar="measure", 
       title="Chart 1. Driver journeys delayed by congestion, Scotland", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/16002'>Scottish Household Survey</a>", 
       xaxtitle='Year', yaxtitle="Percentage")

############################.
### Population ----
############################.
#Household projections
multibar(filepath="Population/2016_pop_house_chart1", 
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 1. Projected change in household type, Scotland", 
         sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/housholds/household-projections'>NRS</a>", 
         xaxtitle="Household type", yaxtitle="Rate per 100,000")

barcompar(filepath="Population/2016_pop_house_chart2", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 2. Projected change in household type by council", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/housholds/household-projections'>NRS</a>", 
          xaxtitle='Council', yaxtitle="Percentage")

#Pop projections
#Y axis range change in plotly
oneline(filepath="Population/2014_pop_scot_proj_chart1", 
        xvar="class1", yvar="measure", 
        title="Chart 1. Projected population, Scotland", 
        sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-projections'>NRS</a>", 
        xaxtitle="Year", yaxtitle="Population")

multiline(filepath="Population/2014_pop_scot_proj_chart2", 
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 2. Projected population by age group, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-projections'>NRS</a>", 
          xaxtitle="Year", yaxtitle="Population")

multibar(filepath="Population/2014_pop_hb_proj_chart3", 
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 3. Population projection by NHS Board, Scotland", 
         sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-projections'>NRS</a>", 
         xaxtitle='Health board', yaxtitle="Population")

onebar(filepath="Population/2014_pop_hb_proj_chart4",
       xvar="class1", yvar="measure", 
       title="Chart 4. Projected change in population<br> by NHS Board: 2014-2039", 
       sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-projections'>NRS</a>", 
       xaxtitle='Health board', yaxtitle="Percentage")

multibar(filepath="Population/2014_pop_la_proj_chart5", 
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 5. Population projection by council, Scotland", 
         sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-projections'>NRS</a>", 
         xaxtitle='Council', yaxtitle="Population")

onebar(filepath="Population/2014_pop_la_proj_chart6",
       xvar="class1", yvar="measure", 
       title="Chart 6. Projected change in population<br> by council: 2014-2039", 
       sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-projections'>NRS</a>", 
       xaxtitle='Council', yaxtitle="Percentage")

#Pop estimation
onebar(filepath="Population/2016_pop_scot_est_chart1", 
       xvar="class1", yvar="measure", 
       title="Chart 1. Population by age group, Scotland, 2016", 
       sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-estimates'>NRS</a>", 
       xaxtitle='Age group', yaxtitle="Population")

#Y axis range change in plotly
oneline(filepath="Population/2016_pop_scot_est_chart2", 
        xvar="class1", yvar="measure", 
        title="Chart 2. Population trend, Scotland", 
        sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-estimates'>NRS</a>", 
        xaxtitle="Year", yaxtitle="Population")

############################.
### Rurality----
############################.
multibar(filepath="Rurality/Rurality_Chart_1", 
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 1. Life expectancy for urban/rural<br> areas, Scotland, 2013-2015", 
         sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/life-expectancy'>NRS</a>", 
         xaxtitle='Urban-rural classification', yaxtitle="Life expectancy at birth")

stackedbar(filepath="Rurality/Rurality_Chart_2", 
           xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
           title="Chart 2. Population across the urban-rural<br> classification, Scotland, 2015", 
           sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/population/population-estimates'>NRS</a>", 
           xaxtitle="Urban-rural classification", yaxtitle="Population")

############################.
### Social environment ----
############################.
#civic participation
barcompar(filepath="Social Environment/Civic_participation_Chart_1", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 1. People who agree with the statement: 'I can<br>influence decissions affecting my local area', Scotland, 2012", 
          sourc="<a href='http://www.gov.scot/Topics/Statistics/16002'>Scottish Household Survey</a>", 
          xaxtitle='Council', yaxtitle="Percentage")

#Edited in plotly: x axis labels
onebar(filepath="Social Environment/Civic_participation_Chart_2", 
          xvar="class1", yvar="measure", 
          title="Chart 2. Voter turnout: 2016 Scottish Parliamentary Elections", 
          sourc="<a href='https://www.electoralcommission.org.uk/scotland'>Electoral Comission</a>", 
          xaxtitle='Constituency', yaxtitle="Percentage")

barcompar(filepath="Social Environment/Civic_participation_Chart_3", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 3. Voter turnout: Scottish independence referendum", 
          sourc="<a href='https://www.electoralcommission.org.uk/scotland'>Electoral Comission</a> and BBC", 
          xaxtitle='Council', yaxtitle="Percentage")

oneline(filepath="Social Environment/Civic_participation_Chart_4", 
       xvar="class1", yvar="measure", 
       title="Chart 4. Scotland voter turnout: UK Parliament elections", 
       sourc="<a href='http://www.ukpolitical.info/'>UK Political Info</a>", 
       xaxtitle='Year', yaxtitle="Percentage")

#Lone parents
barcompar(filepath="Social Environment/lone_parent_chart1", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 1. Households with dependent children <br>which are lone parent households by NHS Board", 
          sourc="<a href='http://www.scotlandscensus.gov.uk/'>Census 2011</a>", 
          xaxtitle='Health board', yaxtitle="Percentage")

barcompar(filepath="Social Environment/lone_parent_chart2", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
          title="Chart 2. Households with dependent children <br>which are lone parent households by council", 
          sourc="<a href='http://www.scotlandscensus.gov.uk/'>Census 2011</a>", 
          xaxtitle='Council', yaxtitle="Percentage")

oneline(filepath="Social Environment/lone_parent_chart3", 
        xvar="class1", yvar="measure", 
        title="Chart 3. Households with dependent children <br>which are lone parent households, Scotland", 
        sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/housholds/household-estimates'>NRS</a>", 
        xaxtitle='Year', yaxtitle="Percentage")

#lone pensioners
barcompar(filepath="Social Environment/lone_pensioner_chart1", 
       xvar="class1", yvar="measure",  comparator="comparator", compname="Scotland",
       title="Chart 1. Lone pensioner households <br>by NHS board of residence", 
       sourc="<a href='http://www.scotlandscensus.gov.uk/'>Census 2011</a>", 
       xaxtitle='Health board', yaxtitle="Percentage")

barcompar(filepath="Social Environment/lone_pensioner_chart2", 
       xvar="class1", yvar="measure",  comparator="comparator", compname="Scotland",
       title="Chart 2. Lone pensioner households by council", 
       sourc="<a href='http://www.scotlandscensus.gov.uk/'>Census 2011</a>", 
       xaxtitle='Council', yaxtitle="Percentage")

#providers of unpaid care
barcompar(filepath="Social Environment/unpaid_carers_chart1", 
       xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
       title="Chart 1. People providing any unpaid care <br>by NHS board of residence, 2011",
       sourc="<a href='http://www.scotlandscensus.gov.uk/'>Census 2011</a>", 
       xaxtitle='Health board', yaxtitle="Percentage")

barcompar(filepath="Social Environment/unpaid_carers_chart2", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
       title="Chart 2. People providing any unpaid care by council, 2011",
       sourc="<a href='http://www.scotlandscensus.gov.uk/'>Census 2011</a>", 
       xaxtitle='Council', yaxtitle="Percentage")

#rating of neighbourhood
barcompar(filepath="Social Environment/neighb_rating_chart1", 
       xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
       title="Chart 1. People rating their neighbourhood as a <br>'Very good' or 'Fairly good' place to live, Scotland, 2012 ", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/16002'>Scottish Household Survey</a>", 
       xaxtitle='Council', yaxtitle="Percentage")

barcompar(filepath="Social Environment/neighb_rating_chart2", 
          xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
       title="Chart 1. People rating their neighbourhood as a <br>'Very good' or 'Fairly good' place to live, Scotland, 2012 ", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/16002'>Scottish Household Survey</a>", 
       xaxtitle='SIMD decile', yaxtitle="Percentage")

#volunteering
barcompar(filepath="Social Environment/volunteering_chart1", 
       xvar="class1", yvar="measure", comparator="comparator", compname="Scotland",
       title="Chart 1. People who had given up time to help as an <br>organizer/volunteer in the last year, Scotland, 2012", 
       sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Health/scottish-health-survey'>Scottish Health Survey</a>", 
       xaxtitle='Council', yaxtitle="Percentage")

############################.
### Smoking----
############################.
oneline(filepath="Smoking/smoking_admissions_chart1", 
        xvar="class1", yvar="measure", 
        title="Chart 1. Smoking attributable admissions, Scotland", 
        sourc="<a href='http://isdscotland.org/Health-Topics/Public-Health/Smoking-Cessation.asp'>ISD</a>", 
        xaxtitle="Year", yaxtitle="Number of admissions")

oneline(filepath="Smoking/smoking_deaths_chart1", 
        xvar="class1", yvar="measure", 
        title="Chart 1. Smoking attributable deaths, Scotland", 
        sourc="<a href='http://isdscotland.org/Health-Topics/Public-Health/Smoking-Cessation.asp'>ISD</a>, <a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/'>NRS</a>, <a href='http://www.gov.scot/Topics/Statistics/16002'>Scottish Household Survey</a>", 
        xaxtitle="Year", yaxtitle="Number of deaths")

############################.
### Suicide ----
############################.
multiline(filepath="Suicide/suicide_national_chart1_2017", 
          xvar="class2", yvar="measure", group="class1", pal_col=palbysexoverall,
          title="Chart 1. Suicide rates, Scotland, all ages", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/suicides'>NRS</a>", 
          xaxtitle="Year", yaxtitle="Age-sex standarized rate per 100,000")

multibar(filepath="Suicide/suicide_national_chart2_2017", 
          xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
          title="Chart 2. Male deaths from suicide<br>over time by age group, Scotland", 
          sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/suicides'>NRS</a>", 
          xaxtitle="Age group", yaxtitle="Age-specific crude rate per 100,000")

multibar(filepath="Suicide/suicide_national_chart3_2017", 
         xvar="class1", yvar="measure", group="class2", pal_col=palnogroups,
         title="Chart 3. Female deaths from suicide<br>over time by age group, Scotland", 
         sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/suicides'>NRS</a>", 
         xaxtitle="Age group", yaxtitle="Age-specific crude rate per 100,000")

multiline(filepath="Suicide/suicide_national_chart4_2017", 
         xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
         title="Chart 4. Deaths from intentional self harm and events<br>of undetermined intent, Scotland", 
         sourc="<a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/suicides'>NRS</a>", 
         xaxtitle="Year", yaxtitle="Age-sex standarized rate per 100,000")

multiline(filepath="Suicide/suicide_uk_chart1_2016", 
          xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
          title="Chart 1. Suicide death rates by UK country", 
          sourc="<a href='https://www.ons.gov.uk/peoplepopulationandcommunity/birthsdeathsandmarriages/deaths/datasets/suicidesintheunitedkingdomreferencetables'>ONS</a>, <a href='https://www.nrscotland.gov.uk/statistics-and-data/statistics/statistics-by-theme/vital-events/deaths/suicides'>NRS</a> & <a href='https://www.nisra.gov.uk/statistics/cause-death/suicide-deaths'>NISRA</a>", 
          xaxtitle="Year", yaxtitle="European age-standarized rate per 100,000")

############################.
### Violence ----
############################.
oneline(filepath="Violence/Violence - National trends Chart 1", 
        xvar="class1", yvar="measure", 
        title="Chart 1. Non-sexual crimes of violence recorded <br>by the police, Scotland", 
        sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Crime-Justice'>Scottish Government</a>", 
        xaxtitle="Financial year", yaxtitle="Number of crimes")

multiline(filepath="Violence/Violence - National trends Chart 2", 
        xvar="class2", yvar="measure", group="class1", pal_col=palnogroups,
        title="Chart 2. Rates of non-sexual crimes of violence<br>recorded by the police, Scotland", 
        sourc="<a href='http://www.gov.scot/Topics/Statistics/Browse/Crime-Justice'>Scottish Government</a>", 
        xaxtitle="Financial year", yaxtitle="Rate per 10,000")

multibar(filepath="Violence/Violence - Health data Chart 1", 
          xvar="class2", yvar="measure", group="class1",  pal_col=palnogroups,
          title="Chart 1. Attendances rates to emergency departments<br>due to interpersonal violence at NHS Lothian in 2013", 
          sourc="<a href='https://www.scotphn.net/wp-content/uploads/2015/10/Report-Violence-Prevention-A-Public-Health-Priority-December-2014.pdf'>Conaglen & Gallimore, 2014</a>", 
          xaxtitle="Age group", yaxtitle="Rate per 1,000")


##END
