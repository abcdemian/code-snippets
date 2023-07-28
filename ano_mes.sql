-- criar uma coluna ano_mes a partir de uma coluna datetime
date_part('year', datetime_column::date) * 100 + date_part('month', datetime_column::date) as ano_mes
