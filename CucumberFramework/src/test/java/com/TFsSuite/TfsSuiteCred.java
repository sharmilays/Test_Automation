
package com.TFsSuite;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class TfsSuiteCred {

    @SerializedName("planIdPfizer")
    @Expose
    private String planIdPfizer;
    @SerializedName("sourceSuiteIDEmployerNoExecution")
    @Expose
    private String sourceSuiteIDEmployerNoExecution;
    @SerializedName("parentSuiteIDPfizer")
    @Expose
    private String parentSuiteIDPfizer;
    @SerializedName("newSuiteNameEmployer")
    @Expose
    private String newSuiteNameEmployer;
    @SerializedName("scope")
    @Expose
    private String scope;
    @SerializedName("domain")
    @Expose
    private String domain;
    @SerializedName("workstation")
    @Expose
    private String workstation;
    @SerializedName("globalUsername")
    @Expose
    private String globalUsername;
    @SerializedName("globalPassword")
    @Expose
    private String globalPassword;
    @SerializedName("baseURI")
    @Expose
    private String baseURI;

    public String getPlanIdPfizer() {
        return planIdPfizer;
    }

    public void setPlanIdPfizer(String planIdPfizer) {
        this.planIdPfizer = planIdPfizer;
    }

    public TfsSuiteCred withPlanIdPfizer(String planIdPfizer) {
        this.planIdPfizer = planIdPfizer;
        return this;
    }

    public String getSourceSuiteIDEmployerNoExecution() {
        return sourceSuiteIDEmployerNoExecution;
    }

    public void setSourceSuiteIDEmployerNoExecution(String sourceSuiteIDEmployerNoExecution) {
        this.sourceSuiteIDEmployerNoExecution = sourceSuiteIDEmployerNoExecution;
    }

    public TfsSuiteCred withSourceSuiteIDEmployerNoExecution(String sourceSuiteIDEmployerNoExecution) {
        this.sourceSuiteIDEmployerNoExecution = sourceSuiteIDEmployerNoExecution;
        return this;
    }

    public String getParentSuiteIDPfizer() {
        return parentSuiteIDPfizer;
    }

    public void setParentSuiteIDPfizer(String parentSuiteIDPfizer) {
        this.parentSuiteIDPfizer = parentSuiteIDPfizer;
    }

    public TfsSuiteCred withParentSuiteIDPfizer(String parentSuiteIDPfizer) {
        this.parentSuiteIDPfizer = parentSuiteIDPfizer;
        return this;
    }

    public String getNewSuiteNameEmployer() {
        return newSuiteNameEmployer;
    }

    public void setNewSuiteNameEmployer(String newSuiteNameEmployer) {
        this.newSuiteNameEmployer = newSuiteNameEmployer;
    }

    public TfsSuiteCred withNewSuiteNameEmployer(String newSuiteNameEmployer) {
        this.newSuiteNameEmployer = newSuiteNameEmployer;
        return this;
    }

    public String getScope() {
        return scope;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }

    public TfsSuiteCred withScope(String scope) {
        this.scope = scope;
        return this;
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

    public TfsSuiteCred withDomain(String domain) {
        this.domain = domain;
        return this;
    }

    public String getWorkstation() {
        return workstation;
    }

    public void setWorkstation(String workstation) {
        this.workstation = workstation;
    }

    public TfsSuiteCred withWorkstation(String workstation) {
        this.workstation = workstation;
        return this;
    }

    public String getGlobalUsername() {
        return globalUsername;
    }

    public void setGlobalUsername(String globalUsername) {
        this.globalUsername = globalUsername;
    }

    public TfsSuiteCred withGlobalUsername(String globalUsername) {
        this.globalUsername = globalUsername;
        return this;
    }

    public String getGlobalPassword() {
        return globalPassword;
    }

    public void setGlobalPassword(String globalPassword) {
        this.globalPassword = globalPassword;
    }

    public TfsSuiteCred withGlobalPassword(String globalPassword) {
        this.globalPassword = globalPassword;
        return this;
    }

    public String getBaseURI() {
        return baseURI;
    }

    public void setBaseURI(String baseURI) {
        this.baseURI = baseURI;
    }

    public TfsSuiteCred withBaseURI(String baseURI) {
        this.baseURI = baseURI;
        return this;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(TfsSuiteCred.class.getName()).append('@').append(Integer.toHexString(System.identityHashCode(this))).append('[');
        sb.append("planIdPfizer");
        sb.append('=');
        sb.append(((this.planIdPfizer == null)?"<null>":this.planIdPfizer));
        sb.append(',');
        sb.append("sourceSuiteIDEmployerNoExecution");
        sb.append('=');
        sb.append(((this.sourceSuiteIDEmployerNoExecution == null)?"<null>":this.sourceSuiteIDEmployerNoExecution));
        sb.append(',');
        sb.append("parentSuiteIDPfizer");
        sb.append('=');
        sb.append(((this.parentSuiteIDPfizer == null)?"<null>":this.parentSuiteIDPfizer));
        sb.append(',');
        sb.append("newSuiteNameEmployer");
        sb.append('=');
        sb.append(((this.newSuiteNameEmployer == null)?"<null>":this.newSuiteNameEmployer));
        sb.append(',');
        sb.append("scope");
        sb.append('=');
        sb.append(((this.scope == null)?"<null>":this.scope));
        sb.append(',');
        sb.append("domain");
        sb.append('=');
        sb.append(((this.domain == null)?"<null>":this.domain));
        sb.append(',');
        sb.append("workstation");
        sb.append('=');
        sb.append(((this.workstation == null)?"<null>":this.workstation));
        sb.append(',');
        sb.append("globalUsername");
        sb.append('=');
        sb.append(((this.globalUsername == null)?"<null>":this.globalUsername));
        sb.append(',');
        sb.append("globalPassword");
        sb.append('=');
        sb.append(((this.globalPassword == null)?"<null>":this.globalPassword));
        sb.append(',');
        sb.append("baseURI");
        sb.append('=');
        sb.append(((this.baseURI == null)?"<null>":this.baseURI));
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
        result = ((result* 31)+((this.globalPassword == null)? 0 :this.globalPassword.hashCode()));
        result = ((result* 31)+((this.newSuiteNameEmployer == null)? 0 :this.newSuiteNameEmployer.hashCode()));
        result = ((result* 31)+((this.globalUsername == null)? 0 :this.globalUsername.hashCode()));
        result = ((result* 31)+((this.parentSuiteIDPfizer == null)? 0 :this.parentSuiteIDPfizer.hashCode()));
        result = ((result* 31)+((this.scope == null)? 0 :this.scope.hashCode()));
        result = ((result* 31)+((this.domain == null)? 0 :this.domain.hashCode()));
        result = ((result* 31)+((this.baseURI == null)? 0 :this.baseURI.hashCode()));
        result = ((result* 31)+((this.workstation == null)? 0 :this.workstation.hashCode()));
        result = ((result* 31)+((this.sourceSuiteIDEmployerNoExecution == null)? 0 :this.sourceSuiteIDEmployerNoExecution.hashCode()));
        result = ((result* 31)+((this.planIdPfizer == null)? 0 :this.planIdPfizer.hashCode()));
        return result;
    }

    @Override
    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if ((other instanceof TfsSuiteCred) == false) {
            return false;
        }
        TfsSuiteCred rhs = ((TfsSuiteCred) other);
        return (((((((((((this.globalPassword == rhs.globalPassword)||((this.globalPassword!= null)&&this.globalPassword.equals(rhs.globalPassword)))&&((this.newSuiteNameEmployer == rhs.newSuiteNameEmployer)||((this.newSuiteNameEmployer!= null)&&this.newSuiteNameEmployer.equals(rhs.newSuiteNameEmployer))))&&((this.globalUsername == rhs.globalUsername)||((this.globalUsername!= null)&&this.globalUsername.equals(rhs.globalUsername))))&&((this.parentSuiteIDPfizer == rhs.parentSuiteIDPfizer)||((this.parentSuiteIDPfizer!= null)&&this.parentSuiteIDPfizer.equals(rhs.parentSuiteIDPfizer))))&&((this.scope == rhs.scope)||((this.scope!= null)&&this.scope.equals(rhs.scope))))&&((this.domain == rhs.domain)||((this.domain!= null)&&this.domain.equals(rhs.domain))))&&((this.baseURI == rhs.baseURI)||((this.baseURI!= null)&&this.baseURI.equals(rhs.baseURI))))&&((this.workstation == rhs.workstation)||((this.workstation!= null)&&this.workstation.equals(rhs.workstation))))&&((this.sourceSuiteIDEmployerNoExecution == rhs.sourceSuiteIDEmployerNoExecution)||((this.sourceSuiteIDEmployerNoExecution!= null)&&this.sourceSuiteIDEmployerNoExecution.equals(rhs.sourceSuiteIDEmployerNoExecution))))&&((this.planIdPfizer == rhs.planIdPfizer)||((this.planIdPfizer!= null)&&this.planIdPfizer.equals(rhs.planIdPfizer))));
    }

}
