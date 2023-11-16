
package com.TFsGetResultID;

import java.util.ArrayList;
import java.util.List;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class Value {

    @SerializedName("id")
    @Expose
    private Integer id;
    @SerializedName("configuration")
    @Expose
    private Configuration configuration;
    @SerializedName("project")
    @Expose
    private Project project;
    @SerializedName("owner")
    @Expose
    private Owner owner;
    @SerializedName("revision")
    @Expose
    private Integer revision;
    @SerializedName("runBy")
    @Expose
    private RunBy runBy;
    @SerializedName("state")
    @Expose
    private String state;
    @SerializedName("testCase")
    @Expose
    private TestCase testCase;
    @SerializedName("testRun")
    @Expose
    private TestRun testRun;
    @SerializedName("lastUpdatedDate")
    @Expose
    private String lastUpdatedDate;
    @SerializedName("lastUpdatedBy")
    @Expose
    private LastUpdatedBy lastUpdatedBy;
    @SerializedName("priority")
    @Expose
    private Integer priority;
    @SerializedName("createdDate")
    @Expose
    private String createdDate;
    @SerializedName("url")
    @Expose
    private String url;
    @SerializedName("failureType")
    @Expose
    private String failureType;
    @SerializedName("area")
    @Expose
    private Area area;
    @SerializedName("testCaseTitle")
    @Expose
    private String testCaseTitle;
    @SerializedName("customFields")
    @Expose
    private List<Object> customFields = new ArrayList<Object>();
    @SerializedName("testCaseReferenceId")
    @Expose
    private Integer testCaseReferenceId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Value withId(Integer id) {
        this.id = id;
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

    public Project getProject() {
        return project;
    }

    public void setProject(Project project) {
        this.project = project;
    }

    public Value withProject(Project project) {
        this.project = project;
        return this;
    }

    public Owner getOwner() {
        return owner;
    }

    public void setOwner(Owner owner) {
        this.owner = owner;
    }

    public Value withOwner(Owner owner) {
        this.owner = owner;
        return this;
    }

    public Integer getRevision() {
        return revision;
    }

    public void setRevision(Integer revision) {
        this.revision = revision;
    }

    public Value withRevision(Integer revision) {
        this.revision = revision;
        return this;
    }

    public RunBy getRunBy() {
        return runBy;
    }

    public void setRunBy(RunBy runBy) {
        this.runBy = runBy;
    }

    public Value withRunBy(RunBy runBy) {
        this.runBy = runBy;
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

    public TestRun getTestRun() {
        return testRun;
    }

    public void setTestRun(TestRun testRun) {
        this.testRun = testRun;
    }

    public Value withTestRun(TestRun testRun) {
        this.testRun = testRun;
        return this;
    }

    public String getLastUpdatedDate() {
        return lastUpdatedDate;
    }

    public void setLastUpdatedDate(String lastUpdatedDate) {
        this.lastUpdatedDate = lastUpdatedDate;
    }

    public Value withLastUpdatedDate(String lastUpdatedDate) {
        this.lastUpdatedDate = lastUpdatedDate;
        return this;
    }

    public LastUpdatedBy getLastUpdatedBy() {
        return lastUpdatedBy;
    }

    public void setLastUpdatedBy(LastUpdatedBy lastUpdatedBy) {
        this.lastUpdatedBy = lastUpdatedBy;
    }

    public Value withLastUpdatedBy(LastUpdatedBy lastUpdatedBy) {
        this.lastUpdatedBy = lastUpdatedBy;
        return this;
    }

    public Integer getPriority() {
        return priority;
    }

    public void setPriority(Integer priority) {
        this.priority = priority;
    }

    public Value withPriority(Integer priority) {
        this.priority = priority;
        return this;
    }

    public String getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(String createdDate) {
        this.createdDate = createdDate;
    }

    public Value withCreatedDate(String createdDate) {
        this.createdDate = createdDate;
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

    public String getFailureType() {
        return failureType;
    }

    public void setFailureType(String failureType) {
        this.failureType = failureType;
    }

    public Value withFailureType(String failureType) {
        this.failureType = failureType;
        return this;
    }

    public Area getArea() {
        return area;
    }

    public void setArea(Area area) {
        this.area = area;
    }

    public Value withArea(Area area) {
        this.area = area;
        return this;
    }

    public String getTestCaseTitle() {
        return testCaseTitle;
    }

    public void setTestCaseTitle(String testCaseTitle) {
        this.testCaseTitle = testCaseTitle;
    }

    public Value withTestCaseTitle(String testCaseTitle) {
        this.testCaseTitle = testCaseTitle;
        return this;
    }

    public List<Object> getCustomFields() {
        return customFields;
    }

    public void setCustomFields(List<Object> customFields) {
        this.customFields = customFields;
    }

    public Value withCustomFields(List<Object> customFields) {
        this.customFields = customFields;
        return this;
    }

    public Integer getTestCaseReferenceId() {
        return testCaseReferenceId;
    }

    public void setTestCaseReferenceId(Integer testCaseReferenceId) {
        this.testCaseReferenceId = testCaseReferenceId;
    }

    public Value withTestCaseReferenceId(Integer testCaseReferenceId) {
        this.testCaseReferenceId = testCaseReferenceId;
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
        sb.append("configuration");
        sb.append('=');
        sb.append(((this.configuration == null)?"<null>":this.configuration));
        sb.append(',');
        sb.append("project");
        sb.append('=');
        sb.append(((this.project == null)?"<null>":this.project));
        sb.append(',');
        sb.append("owner");
        sb.append('=');
        sb.append(((this.owner == null)?"<null>":this.owner));
        sb.append(',');
        sb.append("revision");
        sb.append('=');
        sb.append(((this.revision == null)?"<null>":this.revision));
        sb.append(',');
        sb.append("runBy");
        sb.append('=');
        sb.append(((this.runBy == null)?"<null>":this.runBy));
        sb.append(',');
        sb.append("state");
        sb.append('=');
        sb.append(((this.state == null)?"<null>":this.state));
        sb.append(',');
        sb.append("testCase");
        sb.append('=');
        sb.append(((this.testCase == null)?"<null>":this.testCase));
        sb.append(',');
        sb.append("testRun");
        sb.append('=');
        sb.append(((this.testRun == null)?"<null>":this.testRun));
        sb.append(',');
        sb.append("lastUpdatedDate");
        sb.append('=');
        sb.append(((this.lastUpdatedDate == null)?"<null>":this.lastUpdatedDate));
        sb.append(',');
        sb.append("lastUpdatedBy");
        sb.append('=');
        sb.append(((this.lastUpdatedBy == null)?"<null>":this.lastUpdatedBy));
        sb.append(',');
        sb.append("priority");
        sb.append('=');
        sb.append(((this.priority == null)?"<null>":this.priority));
        sb.append(',');
        sb.append("createdDate");
        sb.append('=');
        sb.append(((this.createdDate == null)?"<null>":this.createdDate));
        sb.append(',');
        sb.append("url");
        sb.append('=');
        sb.append(((this.url == null)?"<null>":this.url));
        sb.append(',');
        sb.append("failureType");
        sb.append('=');
        sb.append(((this.failureType == null)?"<null>":this.failureType));
        sb.append(',');
        sb.append("area");
        sb.append('=');
        sb.append(((this.area == null)?"<null>":this.area));
        sb.append(',');
        sb.append("testCaseTitle");
        sb.append('=');
        sb.append(((this.testCaseTitle == null)?"<null>":this.testCaseTitle));
        sb.append(',');
        sb.append("customFields");
        sb.append('=');
        sb.append(((this.customFields == null)?"<null>":this.customFields));
        sb.append(',');
        sb.append("testCaseReferenceId");
        sb.append('=');
        sb.append(((this.testCaseReferenceId == null)?"<null>":this.testCaseReferenceId));
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
        result = ((result* 31)+((this.owner == null)? 0 :this.owner.hashCode()));
        result = ((result* 31)+((this.area == null)? 0 :this.area.hashCode()));
        result = ((result* 31)+((this.testCaseReferenceId == null)? 0 :this.testCaseReferenceId.hashCode()));
        result = ((result* 31)+((this.lastUpdatedBy == null)? 0 :this.lastUpdatedBy.hashCode()));
        result = ((result* 31)+((this.configuration == null)? 0 :this.configuration.hashCode()));
        result = ((result* 31)+((this.customFields == null)? 0 :this.customFields.hashCode()));
        result = ((result* 31)+((this.project == null)? 0 :this.project.hashCode()));
        result = ((result* 31)+((this.priority == null)? 0 :this.priority.hashCode()));
        result = ((result* 31)+((this.url == null)? 0 :this.url.hashCode()));
        result = ((result* 31)+((this.revision == null)? 0 :this.revision.hashCode()));
        result = ((result* 31)+((this.testRun == null)? 0 :this.testRun.hashCode()));
        result = ((result* 31)+((this.lastUpdatedDate == null)? 0 :this.lastUpdatedDate.hashCode()));
        result = ((result* 31)+((this.createdDate == null)? 0 :this.createdDate.hashCode()));
        result = ((result* 31)+((this.failureType == null)? 0 :this.failureType.hashCode()));
        result = ((result* 31)+((this.id == null)? 0 :this.id.hashCode()));
        result = ((result* 31)+((this.state == null)? 0 :this.state.hashCode()));
        result = ((result* 31)+((this.testCaseTitle == null)? 0 :this.testCaseTitle.hashCode()));
        result = ((result* 31)+((this.runBy == null)? 0 :this.runBy.hashCode()));
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
        return ((((((((((((((((((((this.owner == rhs.owner)||((this.owner!= null)&&this.owner.equals(rhs.owner)))&&((this.area == rhs.area)||((this.area!= null)&&this.area.equals(rhs.area))))&&((this.testCaseReferenceId == rhs.testCaseReferenceId)||((this.testCaseReferenceId!= null)&&this.testCaseReferenceId.equals(rhs.testCaseReferenceId))))&&((this.lastUpdatedBy == rhs.lastUpdatedBy)||((this.lastUpdatedBy!= null)&&this.lastUpdatedBy.equals(rhs.lastUpdatedBy))))&&((this.configuration == rhs.configuration)||((this.configuration!= null)&&this.configuration.equals(rhs.configuration))))&&((this.customFields == rhs.customFields)||((this.customFields!= null)&&this.customFields.equals(rhs.customFields))))&&((this.project == rhs.project)||((this.project!= null)&&this.project.equals(rhs.project))))&&((this.priority == rhs.priority)||((this.priority!= null)&&this.priority.equals(rhs.priority))))&&((this.url == rhs.url)||((this.url!= null)&&this.url.equals(rhs.url))))&&((this.revision == rhs.revision)||((this.revision!= null)&&this.revision.equals(rhs.revision))))&&((this.testRun == rhs.testRun)||((this.testRun!= null)&&this.testRun.equals(rhs.testRun))))&&((this.lastUpdatedDate == rhs.lastUpdatedDate)||((this.lastUpdatedDate!= null)&&this.lastUpdatedDate.equals(rhs.lastUpdatedDate))))&&((this.createdDate == rhs.createdDate)||((this.createdDate!= null)&&this.createdDate.equals(rhs.createdDate))))&&((this.failureType == rhs.failureType)||((this.failureType!= null)&&this.failureType.equals(rhs.failureType))))&&((this.id == rhs.id)||((this.id!= null)&&this.id.equals(rhs.id))))&&((this.state == rhs.state)||((this.state!= null)&&this.state.equals(rhs.state))))&&((this.testCaseTitle == rhs.testCaseTitle)||((this.testCaseTitle!= null)&&this.testCaseTitle.equals(rhs.testCaseTitle))))&&((this.runBy == rhs.runBy)||((this.runBy!= null)&&this.runBy.equals(rhs.runBy))))&&((this.testCase == rhs.testCase)||((this.testCase!= null)&&this.testCase.equals(rhs.testCase))));
    }

}
