@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZPAN_TEST_PLANT_2'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZPAN_TEST_PLANT_2 as select from I_Plant as t1

left outer join I_Plant as t2 on t1.Plant = t2.Plant
{
    key t1.Plant
    
}

union all select from I_Plant

{
key Plant
 }
