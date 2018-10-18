Select COUNTRY , COUNT(COUNTRY) from (
select 
    ISNULL(jl.COUNTRY , 'No Country') AS COUNTRY
    from dbo.Jobs as jb Left join 
dbo.JobLocations as jl on jl.JobId = jb.EntityId where 
CONTRACTHOURS = 1)A Group by COUNTRY;