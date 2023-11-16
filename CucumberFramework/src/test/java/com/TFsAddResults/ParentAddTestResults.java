
package com.TFsAddResults;

import java.util.ArrayList;
import java.util.List;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class ParentAddTestResults {

    @SerializedName("testCaseTitle")
    @Expose
    private String testCaseTitle;
    @SerializedName("testCase")
    @Expose
    private TestCase testCase;
    @SerializedName("configuration")
    @Expose
    private Configuration configuration;
    @SerializedName("testPoint")
    @Expose
    private TestPoint testPoint;
    @SerializedName("state")
    @Expose
    private String state;
    @SerializedName("computerName")
    @Expose
    private String computerName;
    @SerializedName("resolutionState")
    @Expose
    private String resolutionState;
    @SerializedName("priority")
    @Expose
    private Integer priority;
    @SerializedName("failureType")
    @Expose
    private String failureType;
    @SerializedName("automatedTestName")
    @Expose
    private String automatedTestName;
    @SerializedName("automatedTestStorage")
    @Expose
    private String automatedTestStorage;
    @SerializedName("automatedTestType")
    @Expose
    private String automatedTestType;
    @SerializedName("automatedTestId")
    @Expose
    private String automatedTestId;
    @SerializedName("area")
    @Expose
    private Area area;
    @SerializedName("owner")
    @Expose
    private Owner owner;
    @SerializedName("runBy")
    @Expose
    private RunBy runBy;
    @SerializedName("outcome")
    @Expose
    private String outcome;
    @SerializedName("errorMessage")
    @Expose
    private String errorMessage;
    @SerializedName("comment")
    @Expose
    private String comment;
    @SerializedName("associatedBugs")
    @Expose
    private List<AssociatedBug> associatedBugs = new ArrayList<AssociatedBug>();

    public String getTestCaseTitle() {
        return testCaseTitle;
    }

    public void setTestCaseTitle(String testCaseTitle) {
        this.testCaseTitle = testCaseTitle;
    }

    public ParentAddTestResults withTestCaseTitle(String testCaseTitle) {
        this.testCaseTitle = testCaseTitle;
        return this;
    }

    public TestCase getTestCase() {
        return testCase;
    }

    public void setTestCase(TestCase testCase) {
        this.testCase = testCase;
    }

    public ParentAddTestResults withTestCase(TestCase testCase) {
        this.testCase = testCase;
        return this;
    }

    public Configuration getConfiguration() {
        return configuration;
    }

    public void setConfiguration(Configuration configuration) {
        this.configuration = configuration;
    }

    public ParentAddTestResults withConfiguration(Configuration configuration) {
        this.configuration = configuration;
        return this;
    }

    public TestPoint getTestPoint() {
        return testPoint;
    }

    public void setTestPoint(TestPoint testPoint) {
        this.testPoint = testPoint;
    }

    public ParentAddTestResults withTestPoint(TestPoint testPoint) {
        this.testPoint = testPoint;
        return this;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public ParentAddTestResults withState(String state) {
        this.state = state;
        return this;
    }

    public String getComputerName() {
        return computerName;
    }

    public void setComputerName(String computerName) {
        this.computerName = computerName;
    }

    public ParentAddTestResults withComputerName(String computerName) {
        this.computerName = computerName;
        return this;
    }

    public String getResolutionState() {
        return resolutionState;
    }

    public void setResolutionState(String resolutionState) {
        this.resolutionState = resolutionState;
    }

    public ParentAddTestResults withResolutionState(String resolutionState) {
        this.resolutionState = resolutionState;
        return this;
    }

    public Integer getPriority() {
        return priority;
    }

    public void setPriority(Integer priority) {
        this.priority = priority;
    }

    public ParentAddTestResults withPriority(Integer priority) {
        this.priority = priority;
        return this;
    }

    public String getFailureType() {
        return failureType;
    }

    public void setFailureType(String failureType) {
        this.failureType = failureType;
    }

    public ParentAddTestResults withFailureType(String failureType) {
        this.failureType = failureType;
        return this;
    }

    public String getAutomatedTestName() {
        return automatedTestName;
    }

    public void setAutomatedTestName(String automatedTestName) {
        this.automatedTestName = automatedTestName;
    }

    public ParentAddTestResults withAutomatedTestName(String automatedTestName) {
        this.automatedTestName = automatedTestName;
        return this;
    }

    public String getAutomatedTestStorage() {
        return automatedTestStorage;
    }

    public void setAutomatedTestStorage(String automatedTestStorage) {
        this.automatedTestStorage = automatedTestStorage;
    }

    public ParentAddTestResults withAutomatedTestStorage(String automatedTestStorage) {
        this.automatedTestStorage = automatedTestStorage;
        return this;
    }

    public String getAutomatedTestType() {
        return automatedTestType;
    }

    public void setAutomatedTestType(String automatedTestType) {
        this.automatedTestType = automatedTestType;
    }

    public ParentAddTestResults withAutomatedTestType(String automatedTestType) {
        this.automatedTestType = automatedTestType;
        return this;
    }

    public String getAutomatedTestId() {
        return automatedTestId;
    }

    public void setAutomatedTestId(String automatedTestId) {
        this.automatedTestId = automatedTestId;
    }

    public ParentAddTestResults withAutomatedTestId(String automatedTestId) {
        this.automatedTestId = automatedTestId;
        return this;
    }

    public Area getArea() {
        return area;
    }

    public void setArea(Area area) {
        this.area = area;
    }

    public ParentAddTestResults withArea(Area area) {
        this.area = area;
        return this;
    }

    public Owner getOwner() {
        return owner;
    }

    public void setOwner(Owner owner) {
        this.owner = owner;
    }

    public ParentAddTestResults withOwner(Owner owner) {
        this.owner = owner;
        return this;
    }

    public RunBy getRunBy() {
        return runBy;
    }

    public void setRunBy(RunBy runBy) {
        this.runBy = runBy;
    }

    public ParentAddTestResults withRunBy(RunBy runBy) {
        this.runBy = runBy;
        return this;
    }

    public String getOutcome() {
        return outcome;
    }

    public void setOutcome(String outcome) {
        this.outcome = outcome;
    }

    public ParentAddTestResults withOutcome(String outcome) {
        this.outcome = outcome;
        return this;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public ParentAddTestResults withErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
        return this;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public ParentAddTestResults withComment(String comment) {
        this.comment = comment;
        return this;
    }

    public List<AssociatedBug> getAssociatedBugs() {
        return associatedBugs;
    }

    public void setAssociatedBugs(List<AssociatedBug> associatedBugs) {
        this.associatedBugs = associatedBugs;
    }

    public ParentAddTestResults withAssociatedBugs(List<AssociatedBug> associatedBugs) {
        this.associatedBugs = associatedBugs;
        return this;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(ParentAddTestResults.class.getName()).append('@').append(Integer.toHexString(System.identityHashCode(this))).append('[');
        sb.append("testCaseTitle");
        sb.append('=');
        sb.append(((this.testCaseTitle == null)?"<null>":this.testCaseTitle));
        sb.append(',');
        sb.append("testCase");
        sb.append('=');
        sb.append(((this.testCase == null)?"<null>":this.testCase));
        sb.append(',');
        sb.append("configuration");
        sb.append('=');
        sb.append(((this.configuration == null)?"<null>":this.configuration));
        sb.append(',');
        sb.append("testPoint");
        sb.append('=');
        sb.append(((this.testPoint == null)?"<null>":this.testPoint));
        sb.append(',');
        sb.append("state");
        sb.append('=');
        sb.append(((this.state == null)?"<null>":this.state));
        sb.append(',');
        sb.append("computerName");
        sb.append('=');
        sb.append(((this.computerName == null)?"<null>":this.computerName));
        sb.append(',');
        sb.append("resolutionState");
        sb.append('=');
        sb.append(((this.resolutionState == null)?"<null>":this.resolutionState));
        sb.append(',');
        sb.append("priority");
        sb.append('=');
        sb.append(((this.priority == null)?"<null>":this.priority));
        sb.append(',');
        sb.append("failureType");
        sb.append('=');
        sb.append(((this.failureType == null)?"<null>":this.failureType));
        sb.append(',');
        sb.append("automatedTestName");
        sb.append('=');
        sb.append(((this.automatedTestName == null)?"<null>":this.automatedTestName));
        sb.append(',');
        sb.append("automatedTestStorage");
        sb.append('=');
        sb.append(((this.automatedTestStorage == null)?"<null>":this.automatedTestStorage));
        sb.append(',');
        sb.append("automatedTestType");
        sb.append('=');
        sb.append(((this.automatedTestType == null)?"<null>":this.automatedTestType));
        sb.append(',');
        sb.append("automatedTestId");
        sb.append('=');
        sb.append(((this.automatedTestId == null)?"<null>":this.automatedTestId));
        sb.append(',');
        sb.append("area");
        sb.append('=');
        sb.append(((this.area == null)?"<null>":this.area));
        sb.append(',');
        sb.append("owner");
        sb.append('=');
        sb.append(((this.owner == null)?"<null>":this.owner));
        sb.append(',');
        sb.append("runBy");
        sb.append('=');
        sb.append(((this.runBy == null)?"<null>":this.runBy));
        sb.append(',');
        sb.append("outcome");
        sb.append('=');
        sb.append(((this.outcome == null)?"<null>":this.outcome));
        sb.append(',');
        sb.append("errorMessage");
        sb.append('=');
        sb.append(((this.errorMessage == null)?"<null>":this.errorMessage));
        sb.append(',');
        sb.append("comment");
        sb.append('=');
        sb.append(((this.comment == null)?"<null>":this.comment));
        sb.append(',');
        sb.append("associatedBugs");
        sb.append('=');
        sb.append(((this.associatedBugs == null)?"<null>":this.associatedBugs));
        sb.append(',');
        if (sb.charAt((sb.length()- 1)) == ',') {
            sb.setCharAt((sb.length()- 1), ']');
        } else {
            sb.append(']');
        }
        return sb.toString();
    }

    @Override
    public int hashCode() {
        int result = 1;
        result = ((result* 31)+((this.area == null)? 0 :this.area.hashCode()));
        result = ((result* 31)+((this.owner == null)? 0 :this.owner.hashCode()));
        result = ((result* 31)+((this.automatedTestStorage == null)? 0 :this.automatedTestStorage.hashCode()));
        result = ((result* 31)+((this.automatedTestId == null)? 0 :this.automatedTestId.hashCode()));
        result = ((result* 31)+((this.configuration == null)? 0 :this.configuration.hashCode()));
        result = ((result* 31)+((this.automatedTestName == null)? 0 :this.automatedTestName.hashCode()));
        result = ((result* 31)+((this.errorMessage == null)? 0 :this.errorMessage.hashCode()));
        result = ((result* 31)+((this.priority == null)? 0 :this.priority.hashCode()));
        result = ((result* 31)+((this.testPoint == null)? 0 :this.testPoint.hashCode()));
        result = ((result* 31)+((this.automatedTestType == null)? 0 :this.automatedTestType.hashCode()));
        result = ((result* 31)+((this.computerName == null)? 0 :this.computerName.hashCode()));
        result = ((result* 31)+((this.associatedBugs == null)? 0 :this.associatedBugs.hashCode()));
        result = ((result* 31)+((this.resolutionState == null)? 0 :this.resolutionState.hashCode()));
        result = ((result* 31)+((this.failureType == null)? 0 :this.failureType.hashCode()));
        result = ((result* 31)+((this.comment == null)? 0 :this.comment.hashCode()));
        result = ((result* 31)+((this.state == null)? 0 :this.state.hashCode()));
        result = ((result* 31)+((this.testCaseTitle == null)? 0 :this.testCaseTitle.hashCode()));
        result = ((result* 31)+((this.outcome == null)? 0 :this.outcome.hashCode()));
        result = ((result* 31)+((this.testCase == null)? 0 :this.testCase.hashCode()));
        result = ((result* 31)+((this.runBy == null)? 0 :this.runBy.hashCode()));
        return result;
    }

    @Override
    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if ((other instanceof ParentAddTestResults) == false) {
            return false;
        }
        ParentAddTestResults rhs = ((ParentAddTestResults) other);
        return (((((((((((((((((((((this.area == rhs.area)||((this.area!= null)&&this.area.equals(rhs.area)))&&((this.owner == rhs.owner)||((this.owner!= null)&&this.owner.equals(rhs.owner))))&&((this.automatedTestStorage == rhs.automatedTestStorage)||((this.automatedTestStorage!= null)&&this.automatedTestStorage.equals(rhs.automatedTestStorage))))&&((this.automatedTestId == rhs.automatedTestId)||((this.automatedTestId!= null)&&this.automatedTestId.equals(rhs.automatedTestId))))&&((this.configuration == rhs.configuration)||((this.configuration!= null)&&this.configuration.equals(rhs.configuration))))&&((this.automatedTestName == rhs.automatedTestName)||((this.automatedTestName!= null)&&this.automatedTestName.equals(rhs.automatedTestName))))&&((this.errorMessage == rhs.errorMessage)||((this.errorMessage!= null)&&this.errorMessage.equals(rhs.errorMessage))))&&((this.priority == rhs.priority)||((this.priority!= null)&&this.priority.equals(rhs.priority))))&&((this.testPoint == rhs.testPoint)||((this.testPoint!= null)&&this.testPoint.equals(rhs.testPoint))))&&((this.automatedTestType == rhs.automatedTestType)||((this.automatedTestType!= null)&&this.automatedTestType.equals(rhs.automatedTestType))))&&((this.computerName == rhs.computerName)||((this.computerName!= null)&&this.computerName.equals(rhs.computerName))))&&((this.associatedBugs == rhs.associatedBugs)||((this.associatedBugs!= null)&&this.associatedBugs.equals(rhs.associatedBugs))))&&((this.resolutionState == rhs.resolutionState)||((this.resolutionState!= null)&&this.resolutionState.equals(rhs.resolutionState))))&&((this.failureType == rhs.failureType)||((this.failureType!= null)&&this.failureType.equals(rhs.failureType))))&&((this.comment == rhs.comment)||((this.comment!= null)&&this.comment.equals(rhs.comment))))&&((this.state == rhs.state)||((this.state!= null)&&this.state.equals(rhs.state))))&&((this.testCaseTitle == rhs.testCaseTitle)||((this.testCaseTitle!= null)&&this.testCaseTitle.equals(rhs.testCaseTitle))))&&((this.outcome == rhs.outcome)||((this.outcome!= null)&&this.outcome.equals(rhs.outcome))))&&((this.testCase == rhs.testCase)||((this.testCase!= null)&&this.testCase.equals(rhs.testCase))))&&((this.runBy == rhs.runBy)||((this.runBy!= null)&&this.runBy.equals(rhs.runBy))));
    }

}
