
package com.TFsRuns;

import com.TFsRuns.Owner;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class ParentRunResponse {

    @SerializedName("id")
    @Expose
    private Integer id;
    @SerializedName("name")
    @Expose
    private String name;
    @SerializedName("url")
    @Expose
    private String url;
    @SerializedName("isAutomated")
    @Expose
    private Boolean isAutomated;
    @SerializedName("iteration")
    @Expose
    private String iteration;
    @SerializedName("owner")
    @Expose
    private Owner owner;
    @SerializedName("project")
    @Expose
    private Project project;
    @SerializedName("state")
    @Expose
    private String state;
    @SerializedName("plan")
    @Expose
    private Plan plan;
    @SerializedName("totalTests")
    @Expose
    private Integer totalTests;
    @SerializedName("incompleteTests")
    @Expose
    private Integer incompleteTests;
    @SerializedName("notApplicableTests")
    @Expose
    private Integer notApplicableTests;
    @SerializedName("passedTests")
    @Expose
    private Integer passedTests;
    @SerializedName("unanalyzedTests")
    @Expose
    private Integer unanalyzedTests;
    @SerializedName("revision")
    @Expose
    private Integer revision;
    @SerializedName("webAccessUrl")
    @Expose
    private String webAccessUrl;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public ParentRunResponse withId(Integer id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ParentRunResponse withName(String name) {
        this.name = name;
        return this;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public ParentRunResponse withUrl(String url) {
        this.url = url;
        return this;
    }

    public Boolean getIsAutomated() {
        return isAutomated;
    }

    public void setIsAutomated(Boolean isAutomated) {
        this.isAutomated = isAutomated;
    }

    public ParentRunResponse withIsAutomated(Boolean isAutomated) {
        this.isAutomated = isAutomated;
        return this;
    }

    public String getIteration() {
        return iteration;
    }

    public void setIteration(String iteration) {
        this.iteration = iteration;
    }

    public ParentRunResponse withIteration(String iteration) {
        this.iteration = iteration;
        return this;
    }

    public Owner getOwner() {
        return owner;
    }

    public void setOwner(Owner owner) {
        this.owner = owner;
    }

    public ParentRunResponse withOwner(Owner owner) {
        this.owner = owner;
        return this;
    }

    public Project getProject() {
        return project;
    }

    public void setProject(Project project) {
        this.project = project;
    }

    public ParentRunResponse withProject(Project project) {
        this.project = project;
        return this;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public ParentRunResponse withState(String state) {
        this.state = state;
        return this;
    }

    public Plan getPlan() {
        return plan;
    }

    public void setPlan(Plan plan) {
        this.plan = plan;
    }

    public ParentRunResponse withPlan(Plan plan) {
        this.plan = plan;
        return this;
    }

    public Integer getTotalTests() {
        return totalTests;
    }

    public void setTotalTests(Integer totalTests) {
        this.totalTests = totalTests;
    }

    public ParentRunResponse withTotalTests(Integer totalTests) {
        this.totalTests = totalTests;
        return this;
    }

    public Integer getIncompleteTests() {
        return incompleteTests;
    }

    public void setIncompleteTests(Integer incompleteTests) {
        this.incompleteTests = incompleteTests;
    }

    public ParentRunResponse withIncompleteTests(Integer incompleteTests) {
        this.incompleteTests = incompleteTests;
        return this;
    }

    public Integer getNotApplicableTests() {
        return notApplicableTests;
    }

    public void setNotApplicableTests(Integer notApplicableTests) {
        this.notApplicableTests = notApplicableTests;
    }

    public ParentRunResponse withNotApplicableTests(Integer notApplicableTests) {
        this.notApplicableTests = notApplicableTests;
        return this;
    }

    public Integer getPassedTests() {
        return passedTests;
    }

    public void setPassedTests(Integer passedTests) {
        this.passedTests = passedTests;
    }

    public ParentRunResponse withPassedTests(Integer passedTests) {
        this.passedTests = passedTests;
        return this;
    }

    public Integer getUnanalyzedTests() {
        return unanalyzedTests;
    }

    public void setUnanalyzedTests(Integer unanalyzedTests) {
        this.unanalyzedTests = unanalyzedTests;
    }

    public ParentRunResponse withUnanalyzedTests(Integer unanalyzedTests) {
        this.unanalyzedTests = unanalyzedTests;
        return this;
    }

    public Integer getRevision() {
        return revision;
    }

    public void setRevision(Integer revision) {
        this.revision = revision;
    }

    public ParentRunResponse withRevision(Integer revision) {
        this.revision = revision;
        return this;
    }

    public String getWebAccessUrl() {
        return webAccessUrl;
    }

    public void setWebAccessUrl(String webAccessUrl) {
        this.webAccessUrl = webAccessUrl;
    }

    public ParentRunResponse withWebAccessUrl(String webAccessUrl) {
        this.webAccessUrl = webAccessUrl;
        return this;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(ParentRunResponse.class.getName()).append('@').append(Integer.toHexString(System.identityHashCode(this))).append('[');
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
        sb.append("isAutomated");
        sb.append('=');
        sb.append(((this.isAutomated == null)?"<null>":this.isAutomated));
        sb.append(',');
        sb.append("iteration");
        sb.append('=');
        sb.append(((this.iteration == null)?"<null>":this.iteration));
        sb.append(',');
        sb.append("owner");
        sb.append('=');
        sb.append(((this.owner == null)?"<null>":this.owner));
        sb.append(',');
        sb.append("project");
        sb.append('=');
        sb.append(((this.project == null)?"<null>":this.project));
        sb.append(',');
        sb.append("state");
        sb.append('=');
        sb.append(((this.state == null)?"<null>":this.state));
        sb.append(',');
        sb.append("plan");
        sb.append('=');
        sb.append(((this.plan == null)?"<null>":this.plan));
        sb.append(',');
        sb.append("totalTests");
        sb.append('=');
        sb.append(((this.totalTests == null)?"<null>":this.totalTests));
        sb.append(',');
        sb.append("incompleteTests");
        sb.append('=');
        sb.append(((this.incompleteTests == null)?"<null>":this.incompleteTests));
        sb.append(',');
        sb.append("notApplicableTests");
        sb.append('=');
        sb.append(((this.notApplicableTests == null)?"<null>":this.notApplicableTests));
        sb.append(',');
        sb.append("passedTests");
        sb.append('=');
        sb.append(((this.passedTests == null)?"<null>":this.passedTests));
        sb.append(',');
        sb.append("unanalyzedTests");
        sb.append('=');
        sb.append(((this.unanalyzedTests == null)?"<null>":this.unanalyzedTests));
        sb.append(',');
        sb.append("revision");
        sb.append('=');
        sb.append(((this.revision == null)?"<null>":this.revision));
        sb.append(',');
        sb.append("webAccessUrl");
        sb.append('=');
        sb.append(((this.webAccessUrl == null)?"<null>":this.webAccessUrl));
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
        result = ((result* 31)+((this.passedTests == null)? 0 :this.passedTests.hashCode()));
        result = ((result* 31)+((this.project == null)? 0 :this.project.hashCode()));
        result = ((result* 31)+((this.url == null)? 0 :this.url.hashCode()));
        result = ((result* 31)+((this.totalTests == null)? 0 :this.totalTests.hashCode()));
        result = ((result* 31)+((this.revision == null)? 0 :this.revision.hashCode()));
        result = ((result* 31)+((this.incompleteTests == null)? 0 :this.incompleteTests.hashCode()));
        result = ((result* 31)+((this.unanalyzedTests == null)? 0 :this.unanalyzedTests.hashCode()));
        result = ((result* 31)+((this.name == null)? 0 :this.name.hashCode()));
        result = ((result* 31)+((this.isAutomated == null)? 0 :this.isAutomated.hashCode()));
        result = ((result* 31)+((this.iteration == null)? 0 :this.iteration.hashCode()));
        result = ((result* 31)+((this.id == null)? 0 :this.id.hashCode()));
        result = ((result* 31)+((this.state == null)? 0 :this.state.hashCode()));
        result = ((result* 31)+((this.webAccessUrl == null)? 0 :this.webAccessUrl.hashCode()));
        result = ((result* 31)+((this.plan == null)? 0 :this.plan.hashCode()));
        result = ((result* 31)+((this.notApplicableTests == null)? 0 :this.notApplicableTests.hashCode()));
        return result;
    }

    @Override
    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if ((other instanceof ParentRunResponse) == false) {
            return false;
        }
        ParentRunResponse rhs = ((ParentRunResponse) other);
        return (((((((((((((((((this.owner == rhs.owner)||((this.owner!= null)&&this.owner.equals(rhs.owner)))&&((this.passedTests == rhs.passedTests)||((this.passedTests!= null)&&this.passedTests.equals(rhs.passedTests))))&&((this.project == rhs.project)||((this.project!= null)&&this.project.equals(rhs.project))))&&((this.url == rhs.url)||((this.url!= null)&&this.url.equals(rhs.url))))&&((this.totalTests == rhs.totalTests)||((this.totalTests!= null)&&this.totalTests.equals(rhs.totalTests))))&&((this.revision == rhs.revision)||((this.revision!= null)&&this.revision.equals(rhs.revision))))&&((this.incompleteTests == rhs.incompleteTests)||((this.incompleteTests!= null)&&this.incompleteTests.equals(rhs.incompleteTests))))&&((this.unanalyzedTests == rhs.unanalyzedTests)||((this.unanalyzedTests!= null)&&this.unanalyzedTests.equals(rhs.unanalyzedTests))))&&((this.name == rhs.name)||((this.name!= null)&&this.name.equals(rhs.name))))&&((this.isAutomated == rhs.isAutomated)||((this.isAutomated!= null)&&this.isAutomated.equals(rhs.isAutomated))))&&((this.iteration == rhs.iteration)||((this.iteration!= null)&&this.iteration.equals(rhs.iteration))))&&((this.id == rhs.id)||((this.id!= null)&&this.id.equals(rhs.id))))&&((this.state == rhs.state)||((this.state!= null)&&this.state.equals(rhs.state))))&&((this.webAccessUrl == rhs.webAccessUrl)||((this.webAccessUrl!= null)&&this.webAccessUrl.equals(rhs.webAccessUrl))))&&((this.plan == rhs.plan)||((this.plan!= null)&&this.plan.equals(rhs.plan))))&&((this.notApplicableTests == rhs.notApplicableTests)||((this.notApplicableTests!= null)&&this.notApplicableTests.equals(rhs.notApplicableTests))));
    }

}
