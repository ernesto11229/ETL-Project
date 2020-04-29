with pd as (
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
from police_deaths where canine = false group by state
)

select 
	pd.state,
	pd.death_count,
	pd.gun_deaths,
	pd.vehicular_assault_deaths,
	pd.struck_train_deaths,
	pd.stabbed_deaths,
	pd.motorcycl_accident_deaths,
	pd.heat_exhaustion_deaths,
	pd.heart_attack_deaths,
	pd.duty_related_illness_deaths,
	pd.drowned_deaths,
	pd.automobile_accident_deaths,
	pd.assult_deaths,
	nopd.not_only_police_death_count,
	nopd.not_only_police_death_count / pd.death_count as police_death_rate_percent
from (select state, 
	sum (deaths) as not_only_police_death_count 
from gun_deaths group by state) as nopd

join pd on pd.state = nopd.state
order by pd.state;






