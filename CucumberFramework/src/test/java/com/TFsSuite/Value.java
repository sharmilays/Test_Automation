
package com.TFsSuite;

import java.util.ArrayList;
import java.util.List;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class Value {

    @SerializedName("id")
    @Expose
    private Integer id;
    @SerializedName("name")
    @Expose
    private String name;
    @SerializedName("url")
    @Expose
    private String url;
    @SerializedName("project")
    @Expose
    private Project project;
    @SerializedName("plan")
    @Expose
    private Plan plan;
    @SerializedName("revision")
    @Expose
    private Integer revision;
    @SerializedName("testCaseCount")
    @Expose
    private Integer testCaseCount;
    @SerializedName("suiteType")
    @Expose
    private String suiteType;
    @SerializedName("testCasesUrl")
    @Expose
    private String testCasesUrl;
    @SerializedName("inheritDefaultConfigurations")
    @Expose
    private Boolean inheritDefaultConfigurations;
    @SerializedName("defaultConfigurations")
    @Expose
    private List<DefaultConfiguration> defaultConfigurations = new ArrayList<DefaultConfiguration>();
    @SerializedName("state")
    @Expose
    private String state;
    @SerializedName("lastUpdatedBy")
    @Expose
    private LastUpdatedBy lastUpdatedBy;
    @SerializedName("lastUpdatedDate")
    @Expose
    private String lastUpdatedDate;
    @SerializedName("parent")
    @Expose
    private Parent parent;
    @SerializedName("queryString")
    @Expose
    private String queryString;
    @SerializedName("lastPopulatedDate")
    @Expose
    private String lastPopulatedDate;

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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Value withName(String name) {
        this.name = name;
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

    public Plan getPlan() {
        return plan;
    }

    public void setPlan(Plan plan) {
        this.plan = plan;
    }

    public Value withPlan(Plan plan) {
        this.plan = plan;
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

    public Integer getTestCaseCount() {
        return testCaseCount;
    }

    public void setTestCaseCount(Integer testCaseCount) {
        this.testCaseCount = testCaseCount;
    }

    public Value withTestCaseCount(Integer testCaseCount) {
        this.testCaseCount = testCaseCount;
        return this;
    }

    public String getSuiteType() {
        return suiteType;
    }

    public void setSuiteType(String suiteType) {
        this.suiteType = suiteType;
    }

    public Value withSuiteType(String suiteType) {
        this.suiteType = suiteType;
        return this;
    }

    public String getTestCasesUrl() {
        return testCasesUrl;
    }

    public void setTestCasesUrl(String testCasesUrl) {
        this.testCasesUrl = testCasesUrl;
    }

    public Value withTestCasesUrl(String testCasesUrl) {
        this.testCasesUrl = testCasesUrl;
        return this;
    }

    public Boolean getInheritDefaultConfigurations() {
        return inheritDefaultConfigurations;
    }

    public void setInheritDefaultConfigurations(Boolean inheritDefaultConfigurations) {
        this.inheritDefaultConfigurations = inheritDefaultConfigurations;
    }

    public Value withInheritDefaultConfigurations(Boolean inheritDefaultConfigurations) {
        this.inheritDefaultConfigurations = inheritDefaultConfigurations;
        return this;
    }

    public List<DefaultConfiguration> getDefaultConfigurations() {
        return defaultConfigurations;
    }

    public void setDefaultConfigurations(List<DefaultConfiguration> defaultConfigurations) {
        this.defaultConfigurations = defaultConfigurations;
    }

    public Value withDefaultConfigurations(List<DefaultConfiguration> defaultConfigurations) {
        this.defaultConfigurations = defaultConfigurations;
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

    public Parent getParent() {
        return parent;
    }

    public void setParent(Parent parent) {
        this.parent = parent;
    }

    public Value withParent(Parent parent) {
        this.parent = parent;
        return this;
    }

    public String getQueryString() {
        return queryString;
    }

    public void setQueryString(String queryString) {
        this.queryString = queryString;
    }

    public Value withQueryString(String queryString) {
        this.queryString = queryString;
        return this;
    }

    public String getLastPopulatedDate() {
        return lastPopulatedDate;
    }

    public void setLastPopulatedDate(String lastPopulatedDate) {
        this.lastPopulatedDate = lastPopulatedDate;
    }

    public Value withLastPopulatedDate(String lastPopulatedDate) {
        this.lastPopulatedDate = lastPopulatedDate;
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
        sb.append("name");
        sb.append('=');
        sb.append(((this.name == null)?"<null>":this.name));
        sb.append(',');
        sb.append("url");
        sb.append('=');
        sb.append(((this.url == null)?"<null>":this.url));
        sb.append(',');
        sb.append("project");
        sb.append('=');
        sb.append(((this.project == null)?"<null>":this.project));
        sb.append(',');
        sb.append("plan");
        sb.append('=');
        sb.append(((this.plan == null)?"<null>":this.plan));
        sb.append(',');
        sb.append("revision");
        sb.append('=');
        sb.append(((this.revision == null)?"<null>":this.revision));
        sb.append(',');
        sb.append("testCaseCount");
        sb.append('=');
        sb.append(((this.testCaseCount == null)?"<null>":this.testCaseCount));
        sb.append(',');
        sb.append("suiteType");
        sb.append('=');
        sb.append(((this.suiteType == null)?"<null>":this.suiteType));
        sb.append(',');
        sb.append("testCasesUrl");
        sb.append('=');
        sb.append(((this.testCasesUrl == null)?"<null>":this.testCasesUrl));
        sb.append(',');
        sb.append("inheritDefaultConfigurations");
        sb.append('=');
        sb.append(((this.inheritDefaultConfigurations == null)?"<null>":this.inheritDefaultConfigurations));
        sb.append(',');
        sb.append("defaultConfigurations");
        sb.append('=');
        sb.append(((this.defaultConfigurations == null)?"<null>":this.defaultConfigurations));
        sb.append(',');
        sb.append("state");
        sb.append('=');
        sb.append(((this.state == null)?"<null>":this.state));
        sb.append(',');
        sb.append("lastUpdatedBy");
        sb.append('=');
        sb.append(((this.lastUpdatedBy == null)?"<null>":this.lastUpdatedBy));
        sb.append(',');
        sb.append("lastUpdatedDate");
        sb.append('=');
        sb.append(((this.lastUpdatedDate == null)?"<null>":this.lastUpdatedDate));
        sb.append(',');
        sb.append("parent");
        sb.append('=');
        sb.append(((this.parent == null)?"<null>":this.parent));
        sb.append(',');
        sb.append("queryString");
        sb.append('=');
        sb.append(((this.queryString == null)?"<null>":this.queryString));
        sb.append(',');
        sb.append("lastPopulatedDate");
        sb.append('=');
        sb.append(((this.lastPopulatedDate == null)?"<null>":this.lastPopulatedDate));
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
        result = ((result* 31)+((this.lastUpdatedBy == null)? 0 :this.lastUpdatedBy.hashCode()));
        result = ((result* 31)+((this.parent == null)? 0 :this.parent.hashCode()));
        result = ((result* 31)+((this.defaultConfigurations == null)? 0 :this.defaultConfigurations.hashCode()));
        result = ((result* 31)+((this.lastPopulatedDate == null)? 0 :this.lastPopulatedDate.hashCode()));
        result = ((result* 31)+((this.project == null)? 0 :this.project.hashCode()));
        result = ((result* 31)+((this.inheritDefaultConfigurations == null)? 0 :this.inheritDefaultConfigurations.hashCode()));
        result = ((result* 31)+((this.queryString == null)? 0 :this.queryString.hashCode()));
        result = ((result* 31)+((this.suiteType == null)? 0 :this.suiteType.hashCode()));
        result = ((result* 31)+((this.url == null)? 0 :this.url.hashCode()));
        result = ((result* 31)+((this.revision == null)? 0 :this.revision.hashCode()));
        result = ((result* 31)+((this.lastUpdatedDate == null)? 0 :this.lastUpdatedDate.hashCode()));
        result = ((result* 31)+((this.testCaseCount == null)? 0 :this.testCaseCount.hashCode()));
        result = ((result* 31)+((this.name == null)? 0 :this.name.hashCode()));
        result = ((result* 31)+((this.testCasesUrl == null)? 0 :this.testCasesUrl.hashCode()));
        result = ((result* 31)+((this.id == null)? 0 :this.id.hashCode()));
        result = ((result* 31)+((this.state == null)? 0 :this.state.hashCode()));
        result = ((result* 31)+((this.plan == null)? 0 :this.plan.hashCode()));
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
        return ((((((((((((((((((this.lastUpdatedBy == rhs.lastUpdatedBy)||((this.lastUpdatedBy!= null)&&this.lastUpdatedBy.equals(rhs.lastUpdatedBy)))&&((this.parent == rhs.parent)||((this.parent!= null)&&this.parent.equals(rhs.parent))))&&((this.defaultConfigurations == rhs.defaultConfigurations)||((this.defaultConfigurations!= null)&&this.defaultConfigurations.equals(rhs.defaultConfigurations))))&&((this.lastPopulatedDate == rhs.lastPopulatedDate)||((this.lastPopulatedDate!= null)&&this.lastPopulatedDate.equals(rhs.lastPopulatedDate))))&&((this.project == rhs.project)||((this.project!= null)&&this.project.equals(rhs.project))))&&((this.inheritDefaultConfigurations == rhs.inheritDefaultConfigurations)||((this.inheritDefaultConfigurations!= null)&&this.inheritDefaultConfigurations.equals(rhs.inheritDefaultConfigurations))))&&((this.queryString == rhs.queryString)||((this.queryString!= null)&&this.queryString.equals(rhs.queryString))))&&((this.suiteType == rhs.suiteType)||((this.suiteType!= null)&&this.suiteType.equals(rhs.suiteType))))&&((this.url == rhs.url)||((this.url!= null)&&this.url.equals(rhs.url))))&&((this.revision == rhs.revision)||((this.revision!= null)&&this.revision.equals(rhs.revision))))&&((this.lastUpdatedDate == rhs.lastUpdatedDate)||((this.lastUpdatedDate!= null)&&this.lastUpdatedDate.equals(rhs.lastUpdatedDate))))&&((this.testCaseCount == rhs.testCaseCount)||((this.testCaseCount!= null)&&this.testCaseCount.equals(rhs.testCaseCount))))&&((this.name == rhs.name)||((this.name!= null)&&this.name.equals(rhs.name))))&&((this.testCasesUrl == rhs.testCasesUrl)||((this.testCasesUrl!= null)&&this.testCasesUrl.equals(rhs.testCasesUrl))))&&((this.id == rhs.id)||((this.id!= null)&&this.id.equals(rhs.id))))&&((this.state == rhs.state)||((this.state!= null)&&this.state.equals(rhs.state))))&&((this.plan == rhs.plan)||((this.plan!= null)&&this.plan.equals(rhs.plan))));
    }

}
