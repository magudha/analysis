*Importing data 
import excel "C:\Users\DOM\Documents\Value_creation data\final_new.xlsx",sheet(Sheet1)firstrow

*Data cleaning
*checking for duplicates
duplicates list number

*Section A-Demographic Information
*Managing variables under demographic information 
*renaming and labelling variables under demographic information 
rename formenter_interviewers_name Name
label variable Name "name"
rename formrecord_the_gps_for_the_location gps_location
label variable gps_location "gps_location"
rename formsection_a_demographic_infor Gender
label variable Gender "gender"
label define Gender 1"Male" 2 "Female"
label values Gender Gender
rename F Age_cat
label variable Age_cat "Age_cat"
label define Age_cat 1 "15-29" 2 "30-39" 3 "40-49" 4"above 50"
label values Age_cat Age_cat
rename G academic_level
label variable academic_level "academic_level"
label define academic_level 1 "primary" 2 "secondary" 3 "tertiary"
label values academic_level academic_level
*removing inconsistency from variable academic_level
list number if academic_level==4
replace academic_level=. if academic_level==4
*
rename H business_type
label variable business_type "business_type"
rename I area
label variable area "area"
rename J factors
label variable factors "factors"
rename K business_period
label variable business_period "business_period"
label define business_period 1 "below 5 years" 2 "5 years and above"
label values business_period business_period
rename L describe_business
label variable describe_business "describe_business"
label define describe_business 1 "Wholly family owned" 2 "Partly family owned" 3"Privately owned jointly owned"
label values describe_business describe_business
rename M industry_state
label variable industry_state "industry_state"
label define industry_state 1 "Fully functional " 2 "Not fully functional "
label values industry_state industry_state
rename N explanation
label variable explanation "explanation"
rename O challenges
label variable challenges "challenges"

**Section B-Creativity level
*Managing variables under creativity level
*renaming and labelling variables under creativity level
rename formsection_b_creativity_levels output
label variable output "output"
rename Q knowledge
label variable knowledge "knowledge"
rename R innovation
label variable innovation "innovation"
rename S skills
label variable skills "skills"
rename T self_sustainable
label variable self_sustainable "self_sustainable"
rename U diversification
label variable diversification "diversification"

*generating new variables under creativity level and replacing outcomes
gen output2=.
replace output2=1 if output==2
replace output2=2 if output==3
replace output2=3 if output==1
replace output2=4 if output==4
replace output2=5 if output==5

gen knowledge2=.
replace knowledge2=1 if knowledge==2
replace knowledge2=2 if knowledge==3
replace knowledge2=3 if knowledge==1
replace knowledge2=4 if knowledge==4
replace knowledge2=5 if knowledge==5

gen innovation2=.
replace innovation2=1 if innovation==2
replace innovation2=2 if innovation==3
replace innovation2=3 if innovation==1
replace innovation2=4 if innovation==4
replace innovation2=5 if innovation==5

gen skills2=.
replace skills2=1 if skills==2
replace skills2=2 if skills==3
replace skills2=3 if skills==1
replace skills2=4 if skills==4
replace skills2=5 if skills==5

gen diversification2=. 
replace diversification2=1 if diversification==2
replace diversification2=2 if diversification==3
replace diversification2=3 if diversification==1
replace diversification2=4 if diversification==4
replace diversification2=5 if diversification==5

*label defining and labelling values variables under creativity level
label define output2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values output2 output2
label define knowledge2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values knowledge2 knowledge2
label define innovation2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values innovation2 innovation2
label define  skills2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values  skills2  skills2
label define  diversification2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values diversification2 diversification2


*Section C-entrepreneurial competency
*Managing variables under entrepreneurial
*renaming variables under entrepreneurial
rename formsection_d_entrepreneurial_c quality_services
label variable quality_services "quality_services"
rename AB proper_networking
label variable proper_networking "proper_networking"
rename AC amicable_solutions
label variable amicable_solutions "amicable_solutions"
rename AD business_expansion
label variable business_expansion "business_expansion"
rename AE qualified_personnel
label variable qualified_personnel "qualified_personnel"
rename AF outsource_providers
label variable outsource_providers "outsource_providers"


*generating new variables under entrepreneurial and replacing outcomes

gen quality_services2=. 
replace quality_services2=1 if quality_services==2
replace quality_services2=2 if quality_services==3
replace quality_services2=3 if quality_services==1
replace quality_services2=4 if quality_services==4
replace quality_services2=5 if quality_services==5

gen proper_networking2=. 
replace proper_networking2=1 if proper_networking==2
replace proper_networking2=2 if proper_networking==3
replace proper_networking2=3 if proper_networking==1
replace proper_networking2=4 if proper_networking==4
replace proper_networking2=5 if proper_networking==5

gen amicable_solutions2=. 
replace amicable_solutions2=1 if amicable_solutions==2
replace amicable_solutions2=2 if amicable_solutions==3
replace amicable_solutions2=3 if amicable_solutions==1
replace amicable_solutions2=4 if amicable_solutions==4
replace amicable_solutions2=5 if amicable_solutions==5

gen business_expansion2=. 
replace business_expansion2=1 if business_expansion==2
replace business_expansion2=2 if business_expansion==3
replace business_expansion2=3 if business_expansion==1
replace business_expansion2=4 if business_expansion==4
replace business_expansion2=5 if business_expansion==5

gen qualified_personnel2=. 
replace qualified_personnel2=1 if qualified_personnel==2
replace qualified_personnel2=2 if qualified_personnel==3
replace qualified_personnel2=3 if qualified_personnel==1
replace qualified_personnel2=4 if qualified_personnel==4
replace qualified_personnel2=5 if qualified_personnel==5

gen outsource_providers2=. 
replace outsource_providers2=1 if outsource_providers==2
replace outsource_providers2=2 if outsource_providers==3
replace outsource_providers2=3 if outsource_providers==1
replace outsource_providers2=4 if outsource_providers==4
replace outsource_providers2=5 if outsource_providers==5

*label defining and labelling values variables under entrepreneurial 
label define  quality_services2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values  quality_services2  quality_services2
label define  proper_networking2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values  proper_networking2  proper_networking2
label define amicable_solutions2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values amicable_solutions2 amicable_solutions2
label define  business_expansion2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values  business_expansion2 business_expansion2
label define  qualified_personnel2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values qualified_personnel2 qualified_personnel2
label define  outsource_providers2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values outsource_providers2 outsource_providers2

*Section D-Tablebanking
*Managing variables under tablebanking
*renaming and labelling variables under tablebanking

rename formsection_c_table_bankingtab capital_source
label variable capital_source "capital_source"
rename W business_growth
label variable business_growth "business_growth"
rename X new_business
label variable new_business "new_business"
rename Y credit_societies
label variable credit_societies "credit_societies"
rename Z no_management
label variable no_management "no_management"


*generating new variables under Tablebanking and replacing outcomes

gen capital_source2=. 
replace capital_source2=1 if capital_source==2
replace capital_source2=2 if capital_source==3
replace capital_source2=3 if capital_source==1
replace capital_source2=4 if capital_source==4
replace capital_source2=5 if capital_source==5

gen business_growth2=. 
replace business_growth2=1 if business_growth==2
replace business_growth2=2 if business_growth==3
replace business_growth2=3 if business_growth==1
replace business_growth2=4 if business_growth==4
replace business_growth2=5 if business_growth==5

gen new_business2=. 
replace new_business2=1 if new_business==2
replace new_business2=2 if new_business==3
replace new_business2=3 if new_business==1
replace new_business2=4 if new_business==4
replace new_business2=5 if new_business==5

gen credit_societies2=. 
replace credit_societies2=1 if credit_societies==2
replace credit_societies2=2 if credit_societies==3
replace credit_societies2=3 if credit_societies==1
replace credit_societies2=4 if credit_societies==4
replace credit_societies2=5 if credit_societies==5

gen no_management2=. 
replace no_management2=1 if no_management==2
replace no_management2=2 if no_management==3
replace no_management2=3 if no_management==1
replace no_management2=4 if no_management==4
replace no_management2=5 if no_management==5


*label defining and labelling values variables under table banking 
label define  capital_source2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values  capital_source2  capital_source2
label define  business_growth2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values  business_growth2  business_growth2
label define new_business2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values new_business2 new_business2
label define  credit_societies2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values  credit_societies2 credit_societies2
label define  no_management2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values no_management2 no_management2

*Section E:Technology Influence
*Managing variables under Technology Influence
*renaming and labelling variables under technology influence
rename formsection_e_technology_influe qualityimprovement
label variable qualityimprovement "qualityimprovement" 
rename AH product_development
label variable product_development "product_development"
rename AI newskills
label variable newskills "newskills"
rename AJ employnment
label variable employnment "employnment"
rename AK production_time
label variable production_time "production_time"

*generating new variables under Technology Influence and replacing outcomes

gen qualityimprovement2=. 
replace qualityimprovement2=1 if qualityimprovement==2
replace qualityimprovement2=2 if qualityimprovement==3
replace qualityimprovement2=3 if qualityimprovement==1
replace qualityimprovement2=4 if qualityimprovement==4
replace qualityimprovement2=5 if qualityimprovement==5

gen product_development2=. 
replace product_development2=1 if product_development==2
replace product_development2=2 if product_development==3
replace product_development2=3 if product_development==1
replace product_development2=4 if product_development==4
replace product_development2=5 if product_development==5

gen newskills2=. 
replace newskills2=1 if newskills==2
replace newskills2=2 if newskills==3
replace newskills2=3 if newskills==1
replace newskills2=4 if newskills==4
replace newskills2=5 if newskills==5

gen employnment2=. 
replace employnment2=1 if employnment==2
replace employnment2=2 if employnment==3
replace employnment2=3 if employnment==1
replace employnment2=4 if employnment==4
replace employnment2=5 if employnment==5

gen production_time2=. 
replace production_time2=1 if production_time==2
replace production_time2=2 if production_time==3
replace production_time2=3 if production_time==1
replace production_time2=4 if production_time==4
replace production_time2=5 if production_time==5

*label defining and labelling values variables under Technology Influence 
label define  qualityimprovement2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values  qualityimprovement2  qualityimprovement2
label define  product_development2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values  product_development2  product_development2
label define newskills2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values newskills2 newskills2
label define  employnment2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values  employnment2 employnment2
label define  production_time2 1 "Strongly disagree" 2 "Disagree" 3 "Not sure" 4 "Agree" 5 " Strongly Agree"
label values production_time2 production_time2


*Section F:Institution and reguratory policies
*Managing variables under section F
*renaming and labelling variables
*section F (1)
rename formsection_f_institutional_and valcreationbs
label variable valcreationbs "valcreationbs"
label define valcreationbs 1"Yes" 2 "No" 3 "Not aware"
label values valcreationbs valcreationbs
*section F(2)
rename AM sufficientclassification
label variable sufficientclassification "sufficientclassification"
rename AN enoughempowerment
label variable enoughempowerment "enoughempowerment"
rename AO idealregistration
label variable idealregistration "idealregistration"
rename AP easyinformation
label variable easyinformation "easyinformation"

*generating new variables under Institution and reguratory policies(section F2) and replacing outcomes

gen sufficientclassification2=. 
replace sufficientclassification2=1 if sufficientclassification==2
replace sufficientclassification2=2 if sufficientclassification2==3
replace sufficientclassification2=3 if sufficientclassification==1
replace sufficientclassification2=4 if sufficientclassification==4
replace sufficientclassification2=5 if sufficientclassification==5

gen enoughempowerment2=. 
replace enoughempowerment2=1 if enoughempowerment==2
replace enoughempowerment2=2 if enoughempowerment==3
replace enoughempowerment2=3 if enoughempowerment==1
replace enoughempowerment2=4 if enoughempowerment==4
replace enoughempowerment2=5 if enoughempowerment==5

gen idealregistration2=. 
replace idealregistration2=1 if idealregistration==2
replace idealregistration2=2 if idealregistration==3
replace idealregistration2=3 if idealregistration==1
replace idealregistration2=4 if idealregistration==4
replace idealregistration2=5 if idealregistration==5

gen easyinformation2=. 
replace easyinformation2=1 if easyinformation==2
replace easyinformation2=2 if easyinformation==3
replace easyinformation2=3 if easyinformation==1
replace easyinformation2=4 if easyinformation==4
replace easyinformation2=5 if easyinformation==5

*label defining and labelling values variables under Institution and reguratory policies(section F2) 
label define  sufficientclassification2 1 "Strongly disagree" 2 "Disagree" 3 "Not aware" 4 "Agree" 5 " Strongly Agree"
label values  sufficientclassification2 sufficientclassification2  
label define  enoughempowerment2 1 "Strongly disagree" 2 "Disagree" 3 "Not aware" 4 "Agree" 5 " Strongly Agree"
label values  enoughempowerment2 enoughempowerment2  
label define idealregistration2 1 "Strongly disagree" 2 "Disagree" 3 "Not aware" 4 "Agree" 5 " Strongly Agree"
label values idealregistration2 idealregistration2
label define  easyinformation2 1 "Strongly disagree" 2 "Disagree" 3 "Not aware" 4 "Agree" 5 " Strongly Agree"
label values  easyinformation2 easyinformation2

*section F (3)
rename AQ firm_register
label variable firm_register "firm_register"
rename AR licenses
label variable licenses "licenses"
rename AS employment
label variable employment "employment"
rename AT health
label variable health "health"
rename AU tax
label variable tax "tax"
rename AV environmental
label variable environmental "environmental" 

*generating new variables under Institution and reguratory policies(section F3) and replacing outcomes

gen firm_register2=. 
replace firm_register2=1 if firm_register==2
replace firm_register2=2 if firm_register==3
replace firm_register2=3 if firm_register==1
replace firm_register2=4 if firm_register==4
replace firm_register2=5 if firm_register==5

gen licenses2=. 
replace licenses2=1 if licenses==2
replace licenses2=2 if licenses==3
replace licenses2=3 if licenses==1
replace licenses2=4 if licenses==4
replace licenses2=5 if licenses==5

gen employment2=. 
replace employment2=1 if employment==2
replace employment2=2 if employment==3
replace employment2=3 if employment==1
replace employment2=4 if employment==4
replace employment2=5 if employment==5

gen health2=. 
replace health2=1 if health==2
replace health2=2 if health==3
replace health2=3 if health==1
replace health2=4 if health==4
replace health2=5 if health==5

gen tax2=. 
replace tax2=1 if tax==2
replace tax2=2 if tax==3
replace tax2=3 if tax==1
replace tax2=4 if tax==4
replace tax2=5 if tax==5

gen environmental2=. 
replace environmental2=1 if environmental==2
replace environmental2=2 if environmental==3
replace environmental2=3 if environmental==1
replace environmental2=4 if environmental==4
replace environmental2=5 if environmental==5

*label defining and labelling values variables under Institution and reguratory policies(section F3)
label define firm_register2 1 "Very Difficult" 2 "Difficult" 3 "No opinion" 4 "Easy" 5 " Very Easy"
label values  firm_register2 firm_register2   
label define licenses2 1 "Very Difficult" 2 "Difficult" 3 "No opinion" 4 "Easy" 5 " Very Easy"
label values  licenses2 licenses2   
label define employment2 1 "Very Difficult" 2 "Difficult" 3 "No opinion" 4 "Easy" 5 " Very Easy"
label values  employment2  employment2  
label define  health2 1 "Very Difficult" 2 "Difficult" 3 "No opinion" 4 "Easy" 5 " Very Easy"
label values  health2 health2   
label define tax2 1 "Very Difficult" 2 "Difficult" 3 "No opinion" 4 "Easy" 5 " Very Easy"
label values tax2 tax2 
label define  environmental2 1 "Very Difficult" 2 "Difficult" 3 "No opinion" 4 "Easy" 5 " Very Easy"
label values  environmental2 environmental2 


*section F (4)
rename AW new_ways
label variable new_ways "new_ways"
rename AX work_hard
label variable work_hard "work_hard"
rename AY high_demands
label variable high_demands "high_demands"
rename AZ directions
label variable directions "directions"
rename BA risk_newbs
label variable risk_newbs "risk_newbs"

*generating new variables under Institution and reguratory policies(section F4) and replacing outcomes

gen new_ways2=. 
replace new_ways2=1 if new_ways==2
replace new_ways2=2 if new_ways==3
replace new_ways2=3 if new_ways==1
replace new_ways2=4 if new_ways==4
replace new_ways2=5 if new_ways==5

gen work_hard2=. 
replace work_hard2=1 if work_hard==2
replace work_hard2=2 if work_hard==3
replace work_hard2=3 if work_hard==1
replace work_hard2=4 if work_hard==4
replace work_hard2=5 if work_hard==5

gen high_demands2=. 
replace high_demands2=1 if high_demands==2
replace high_demands2=2 if high_demands==3
replace high_demands2=3 if high_demands==1
replace high_demands2=4 if high_demands==4
replace high_demands2=5 if high_demands==5

gen directions2=. 
replace directions2=1 if directions==2
replace directions2=2 if directions==3
replace directions2=3 if directions==1
replace directions2=4 if directions==4
replace directions2=5 if directions==5

gen risk_newbs2=. 
replace risk_newbs2=1 if risk_newbs==2
replace risk_newbs2=2 if risk_newbs==3
replace risk_newbs2=3 if risk_newbs==1
replace risk_newbs2=4 if risk_newbs==4
replace risk_newbs2=5 if risk_newbs==5


*label defining and labelling values variables under Institution and reguratory policies(section F4)
label define new_ways2 1 "Not very important" 2 "Not important" 3 "No opinion" 4 "Important" 5 " Very important"
label values  new_ways2 new_ways2   
label define work_hard2 1 "Not very important" 2 "Not important" 3 "No opinion" 4 "Important" 5 " Very important"
label values  work_hard2 work_hard2   
label define high_demands2 1 "Not very important" 2 "Not important" 3 "No opinion" 4 "Important" 5 " Very important"
label values  high_demands2 high_demands2  
label define  directions2 1 "Not very important" 2 "Not important" 3 "No opinion" 4 "Important" 5 " Very important"
label values  directions2 directions2   
label define risk_newbs2 1 "Not very important" 2 "Not important" 3 "No opinion" 4 "Important" 5 " Very important"
label values risk_newbs2 risk_newbs2


*Section G:Contribution of value creation
*managing variables under value creation
*renaming and labelling variables under value creation
rename formsection_g_contributions_of highproductivity
label variable highproductivity "highproductivity"
rename BC bsgrowth
label variable bsgrowth "bsgrowth"
rename BD morejobs
label variable morejobs "morejobs"
rename BE quasocioeconomic
label variable quasocioeconomic "quasocioeconomic"

*generating new variables under Contribution of value creation and replacing outcomes

gen highproductivity2=. 
replace highproductivity2=1 if highproductivity==2
replace highproductivity2=2 if highproductivity==3
replace highproductivity2=3 if highproductivity==1
replace highproductivity2=4 if highproductivity==4
replace highproductivity2=5 if highproductivity==5

gen bsgrowth2=. 
replace bsgrowth2=1 if bsgrowth==2
replace bsgrowth2=2 if bsgrowth==3
replace bsgrowth2=3 if bsgrowth==1
replace bsgrowth2=4 if bsgrowth==4
replace bsgrowth2=5 if bsgrowth==5

gen morejobs2=. 
replace morejobs2=1 if morejobs==2
replace morejobs2=2 if morejobs==3
replace morejobs2=3 if morejobs==1
replace morejobs2=4 if morejobs==4
replace morejobs2=5 if morejobs==5

gen quasocioeconomic2=. 
replace quasocioeconomic2=1 if quasocioeconomic==2
replace quasocioeconomic2=2 if quasocioeconomic==3
replace quasocioeconomic2=3 if quasocioeconomic==1
replace quasocioeconomic2=4 if quasocioeconomic==4
replace quasocioeconomic2=5 if quasocioeconomic==5


*label defining and labelling values variables under Contribution of value creation
label define  highproductivity2 1 "Strongly disagree" 2 "Disagree" 3 "Not aware" 4 "Agree" 5 " Strongly Agree"
label values  highproductivity2 highproductivity2  
label define  bsgrowth2 1 "Strongly disagree" 2 "Disagree" 3 "Not aware" 4 "Agree" 5 " Strongly Agree"
label values  bsgrowth2 bsgrowth2  
label define  morejobs2 1 "Strongly disagree" 2 "Disagree" 3 "Not aware" 4 "Agree" 5 " Strongly Agree"
label values  morejobs2 morejobs2  
label define quasocioeconomic2 1 "Strongly disagree" 2 "Disagree" 3 "Not aware" 4 "Agree" 5 " Strongly Agree"
label values quasocioeconomic2 quasocioeconomic2

*General suggestions of the questionnaire
*Suggestions and comments
rename formsuggestions__commentspleas comments
label variable comments "comments"


*DATA ANALYSIS
*Descriptives
*Finding Descriptives under Section B-Creativity level 
summarize output2 knowledge2 innovation2 skills2 diversification2,detail 
*Finding Descriptives under Section C-entrepreneurial competency
summarize quality_services2 proper_networking2 amicable_solutions2 business_expansion2 qualified_personnel2 outsource_providers2, detail
*Finding Descriptives under Section D-Table Banking
summarize capital_source2 business_growth2 new_business2 credit_societies2 no_management2, detail
*Finding Descriptives under Technology Influences
summarize qualityimprovement2 product_development2 newskills2 employnment2, detail
*Finding Descriptives under Institutional and regulatory policies
*section F(2)
summarize sufficientclassification2 enoughempowerment2 idealregistration2 easyinformation2, detail
*section F(3)
summarize firm_register2 licenses2 employnment2 health2 tax2 environmental2, detail
*section F(4)
summarize new_ways2 work_hard2 high_demands2 directions2 risk_newbs2, detail
*Finding Descriptives under  Section G-Contribution of value creation
summarize highproductivity2 bsgrowth2 morejobs2 quasocioeconomic2, detail

*LINEAR REGRESSION
*In our case we do a multiple linear regression
*We generate a new variable called value_creation and use it regress against all the other variables in our objectives hence:
egen value_creation=rowmean(highproductivity2 bsgrowth2 morejobs2 quasocioeconomic2)
*We now regress value creation on each variable on the statements
*value creation on creativity level
regress value_creation output2 knowledge2 innovation2 skills2 diversification2
*value creation on entrepreneurial competency
regress value_creation quality_services2 proper_networking2 amicable_solutions2 business_expansion2 qualified_personnel2 outsource_providers2
*value creation on table banking
regress value_creation capital_source2 business_growth2 new_business2 credit_societies2 no_management2
*value creation on Technology Influences
regress value_creation qualityimprovement2 product_development2 newskills2 employnment2
*value creation on regulatory policies on creativity levels, table banking, entrepreneurial competency and technology influence
*we first generate combined variables of the statements in each section thus:
egen regulatory_policies=rowmean(sufficientclassification2 enoughempowerment2 idealregistration2 easyinformation2 firm_register2 licenses2 employnment2 health2 tax2 environmental2 new_ways2 work_hard2 high_demands2 directions2 risk_newbs2)
egen creativity_levels=rowmean(output2 knowledge2 innovation2 skills2 diversification2)
egen table_banking=rowmean(capital_source2 business_growth2 new_business2 credit_societies2 no_management2)
egen entrepreneurial=rowmean(quality_services2 proper_networking2 amicable_solutions2 business_expansion2 qualified_personnel2 outsource_providers2)
egen technology_influence=rowmean(qualityimprovement2 product_development2 newskills2 employnment2)
*We now create a model, one with valuecreation on regulatory policies on creativity levels, entrepreneurial,table banking and technology influence
regress value_creation regulatory_policies creativity_levels table_banking entrepreneurial technology_influence
*Two, a model with valuecreation on creativity levels, entrepreneurial,table banking and technology influence without regulatory policies and compare the two models.
regress value_creation creativity_levels table_banking entrepreneurial technology_influence






