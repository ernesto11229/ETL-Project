select state, 
	count (*) as death_count,
	count(case when cause = 'Gunfire' then 1 else null end) as gun_deaths,
	count(case when cause = 'Vehicular assault' then 1 else null end) as vehicular_assault_deaths,
	count(case when cause = 'Struck by train' then 1 else null end) as struck_train_deaths,
	count(case when cause = 'Stabbed' then 1 else null end) as stabbed_deaths,
	count(case when cause = 'Motorcycle accident' then 1 else null end) as motorcycl_accident_deaths,
	count(case when cause = 'Heat exhaustion' then 1 else null end) as heat_exhaustion_deaths,
	count(case when cause = 'Heart attack' then 1 else null end) as heart_attack_deaths,
	count(case when cause = 'Duty related illness' then 1 else null end) as duty_related_illness_deaths,
	count(case when cause = 'Drowned' then 1 else null end) as drowned_deaths,
	count(case when cause = 'Automobile accident' then 1 else null end) as automobile_accident_deaths,
	count(case when cause = 'Assault' then 1 else null end) as assult_deaths
from police_deaths where canine = false group by state;


select state, 
	sum (deaths) as not_only_police_death_count
	
from gun_deaths group by state;




