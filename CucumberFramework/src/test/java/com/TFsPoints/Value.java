
package com.TFsPoints;

import java.util.ArrayList;
import java.util.List;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class Value {

    @SerializedName("id")
    @Expose
    private Object id;
    @SerializedName("url")
    @Expose
    private String url;
    @SerializedName("assignedTo")
    @Expose
    private AssignedTo assignedTo;
    @SerializedName("automated")
    @Expose
    private Boolean automated;
    @SerializedName("configuration")
    @Expose
    private Configuration configuration;
    @SerializedName("lastTestRun")
    @Expose
    private LastTestRun lastTestRun;
    @SerializedName("lastResult")
    @Expose
    private LastResult lastResult;
    @SerializedName("outcome")
    @Expose
    private String outcome;
    @SerializedName("state")
    @Expose
    private String state;
    @SerializedName("lastResultState")
    @Expose
    private String lastResultState;
    @SerializedName("testCase")
    @Expose
    private TestCase testCase;
    @SerializedName("workItemProperties")
    @Expose
    private List<WorkItemProperty> workItemProperties = new ArrayList<WorkItemProperty>();

    public Object getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Value withId(Integer id) {
        this.id = id;
        return this;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Value withUrl(String url) {
        this.url = url;
        return this;
    }

    public AssignedTo getAssignedTo() {
        return assignedTo;
    }

    public void setAssignedTo(AssignedTo assignedTo) {
        this.assignedTo = assignedTo;
    }

    public Value withAssignedTo(AssignedTo assignedTo) {
        this.assignedTo = assignedTo;
        return this;
    }

    public Boolean getAutomated() {
        return automated;
    }

    public void setAutomated(Boolean automated) {
        this.automated = automated;
    }

    public Value withAutomated(Boolean automated) {
        this.automated = automated;
        return this;
    }

    public Configuration getConfiguration() {
        return configuration;
    }

    public void setConfiguration(Configuration configuration) {
        this.configuration = configuration;
    }

    public Value withConfiguration(Configuration configuration) {
        this.configuration = configuration;
        return this;
    }

    public LastTestRun getLastTestRun() {
        return lastTestRun;
    }

    public void setLastTestRun(LastTestRun lastTestRun) {
        this.lastTestRun = lastTestRun;
    }

    public Value withLastTestRun(LastTestRun lastTestRun) {
        this.lastTestRun = lastTestRun;
        return this;
    }

    public LastResult getLastResult() {
        return lastResult;
    }

    public void setLastResult(LastResult lastResult) {
        this.lastResult = lastResult;
    }

    public Value withLastResult(LastResult lastResult) {
        this.lastResult = lastResult;
        return this;
    }

    public String getOutcome() {
        return outcome;
    }

    public void setOutcome(String outcome) {
        this.outcome = outcome;
    }

    public Value withOutcome(String outcome) {
        this.outcome = outcome;
        return this;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Value withState(String state) {
        this.state = state;
        return this;
    }

    public String getLastResultState() {
        return lastResultState;
    }

    public void setLastResultState(String lastResultState) {
        this.lastResultState = lastResultState;
    }

    public Value withLastResultState(String lastResultState) {
        this.lastResultState = lastResultState;
        return this;
    }

    public TestCase getTestCase() {
        return testCase;
    }

    public void setTestCase(TestCase testCase) {
        this.testCase = testCase;
    }

    public Value withTestCase(TestCase testCase) {
        this.testCase = testCase;
        return this;
    }

    public List<WorkItemProperty> getWorkItemProperties() {
        return workItemProperties;
    }

    public void setWorkItemProperties(List<WorkItemProperty> workItemProperties) {
        this.workItemProperties = workItemProperties;
    }

    public Value withWorkItemProperties(List<WorkItemProperty> workItemProperties) {
        this.workItemProperties = workItemProperties;
        return this;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Value.class.getName()).append('@').append(Integer.toHexString(System.identityHashCode(this))).append('[');
        sb.append("id");
        sb.append('=');
        sb.append(((this.id == null)?"<null>":this.id));
        sb.append(',');
        sb.append("url");
        sb.append('=');
        sb.append(((this.url == null)?"<null>":this.url));
        sb.append(',');
        sb.append("assignedTo");
        sb.append('=');
        sb.append(((this.assignedTo == null)?"<null>":this.assignedTo));
        sb.append(',');
        sb.append("automated");
        sb.append('=');
        sb.append(((this.automated == null)?"<null>":this.automated));
        sb.append(',');
        sb.append("configuration");
        sb.append('=');
        sb.append(((this.configuration == null)?"<null>":this.configuration));
        sb.append(',');
        sb.append("lastTestRun");
        sb.append('=');
        sb.append(((this.lastTestRun == null)?"<null>":this.lastTestRun));
        sb.append(',');
        sb.append("lastResult");
        sb.append('=');
        sb.append(((this.lastResult == null)?"<null>":this.lastResult));
        sb.append(',');
        sb.append("outcome");
        sb.append('=');
        sb.append(((this.outcome == null)?"<null>":this.outcome));
        sb.append(',');
        sb.append("state");
        sb.append('=');
        sb.append(((this.state == null)?"<null>":this.state));
        sb.append(',');
        sb.append("lastResultState");
        sb.append('=');
        sb.append(((this.lastResultState == null)?"<null>":this.lastResultState));
        sb.append(',');
        sb.append("testCase");
        sb.append('=');
        sb.append(((this.testCase == null)?"<null>":this.testCase));
        sb.append(',');
        sb.append("workItemProperties");
        sb.append('=');
        sb.append(((this.workItemProperties == null)?"<null>":this.workItemProperties));
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
        result = ((result* 31)+((this.workItemProperties == null)? 0 :this.workItemProperties.hashCode()));
        result = ((result* 31)+((this.configuration == null)? 0 :this.configuration.hashCode()));
        result = ((result* 31)+((this.lastResult == null)? 0 :this.lastResult.hashCode()));
        result = ((result* 31)+((this.lastTestRun == null)? 0 :this.lastTestRun.hashCode()));
        result = ((result* 31)+((this.lastResultState == null)? 0 :this.lastResultState.hashCode()));
        result = ((result* 31)+((this.url == null)? 0 :this.url.hashCode()));
        result = ((result* 31)+((this.assignedTo == null)? 0 :this.assignedTo.hashCode()));
        result = ((result* 31)+((this.automated == null)? 0 :this.automated.hashCode()));
        result = ((result* 31)+((this.id == null)? 0 :this.id.hashCode()));
        result = ((result* 31)+((this.state == null)? 0 :this.state.hashCode()));
        result = ((result* 31)+((this.outcome == null)? 0 :this.outcome.hashCode()));
        result = ((result* 31)+((this.testCase == null)? 0 :this.testCase.hashCode()));
        return result;
    }

    @Override
    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if ((other instanceof Value) == false) {
            return false;
        }
        Value rhs = ((Value) other);
        return (((((((((((((this.workItemProperties == rhs.workItemProperties)||((this.workItemProperties!= null)&&this.workItemProperties.equals(rhs.workItemProperties)))&&((this.configuration == rhs.configuration)||((this.configuration!= null)&&this.configuration.equals(rhs.configuration))))&&((this.lastResult == rhs.lastResult)||((this.lastResult!= null)&&this.lastResult.equals(rhs.lastResult))))&&((this.lastTestRun == rhs.lastTestRun)||((this.lastTestRun!= null)&&this.lastTestRun.equals(rhs.lastTestRun))))&&((this.lastResultState == rhs.lastResultState)||((this.lastResultState!= null)&&this.lastResultState.equals(rhs.lastResultState))))&&((this.url == rhs.url)||((this.url!= null)&&this.url.equals(rhs.url))))&&((this.assignedTo == rhs.assignedTo)||((this.assignedTo!= null)&&this.assignedTo.equals(rhs.assignedTo))))&&((this.automated == rhs.automated)||((this.automated!= null)&&this.automated.equals(rhs.automated))))&&((this.id == rhs.id)||((this.id!= null)&&this.id.equals(rhs.id))))&&((this.state == rhs.state)||((this.state!= null)&&this.state.equals(rhs.state))))&&((this.outcome == rhs.outcome)||((this.outcome!= null)&&this.outcome.equals(rhs.outcome))))&&((this.testCase == rhs.testCase)||((this.testCase!= null)&&this.testCase.equals(rhs.testCase))));
    }

}
