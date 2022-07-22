//Write a method updateOpportunityStage, which takes two String parameters - stageNew and stageOld, queries all
// Opportunity records, which have StageName = :statusOld, and updates them with statusNew, returning the list of
// updated Opportunities. This method should check if stageNew and stageOld are valid picklist values for
// Opportunity.StageName - use the following code to get the list of available picklist values:
// List<Schema.PicklistEntry> opportunityStages = Opportunity.StageName.getDescribe().getPicklistValues()

public class SomeClass {
    public static List<Schema.PicklistEntry>updateOpportunityStage (String stageNew, String stageOld){
        List<Schema.PicklistEntry> opportunityStages = Opportunity.StageName.getDescribe().getPicklistValues();
        List<Opportunity> opportunities = [SELECT Id, Name FROM Opportunity WHERE StageName = :stageOld];
        for (Opportunity opportunity : opportunities) {
            opportunity.StageName = stageNew;
        }
        update opportunities;
        System.debug(opportunityStages);
        return opportunityStages;
    }
}