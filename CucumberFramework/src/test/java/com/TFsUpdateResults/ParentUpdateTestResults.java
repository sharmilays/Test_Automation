
package com.TFsUpdateResults;

import java.util.ArrayList;
import java.util.List;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class ParentUpdateTestResults {

    @SerializedName("id")
    @Expose
    private Integer id;
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
    @SerializedName("startedDate")
    @Expose
    private String startedDate;
    @SerializedName("completedDate")
    @Expose
    private String completedDate;
    @SerializedName("durationInMs")
    @Expose
    private Long durationInMs;
    
    @SerializedName("associatedBugs")
    @Expose
    private List<AssociatedBug> associatedBugs = new ArrayList<AssociatedBug>();

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public ParentUpdateTestResults withId(Integer id) {
        this.id = id;
        return this;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public ParentUpdateTestResults withState(String state) {
        this.state = state;
        return this;
    }

    public String getComputerName() {
        return computerName;
    }

    public void setComputerName(String computerName) {
        this.computerName = computerName;
    }

    public ParentUpdateTestResults withComputerName(String computerName) {
        this.computerName = computerName;
        return this;
    }

    public String getResolutionState() {
        return resolutionState;
    }

    public void setResolutionState(String resolutionState) {
        this.resolutionState = resolutionState;
    }

    public ParentUpdateTestResults withResolutionState(String resolutionState) {
        this.resolutionState = resolutionState;
        return this;
    }

    public Integer getPriority() {
        return priority;
    }

    public void setPriority(Integer priority) {
        this.priority = priority;
    }

    public ParentUpdateTestResults withPriority(Integer priority) {
        this.priority = priority;
        return this;
    }

    public String getFailureType() {
        return failureType;
    }

    public void setFailureType(String failureType) {
        this.failureType = failureType;
    }

    public ParentUpdateTestResults withFailureType(String failureType) {
        this.failureType = failureType;
        return this;
    }

    public Owner getOwner() {
        return owner;
    }

    public void setOwner(Owner owner) {
        this.owner = owner;
    }

    public ParentUpdateTestResults withOwner(Owner owner) {
        this.owner = owner;
        return this;
    }

    public RunBy getRunBy() {
        return runBy;
    }

    public void setRunBy(RunBy runBy) {
        this.runBy = runBy;
    }

    public ParentUpdateTestResults withRunBy(RunBy runBy) {
        this.runBy = runBy;
        return this;
    }

    public String getOutcome() {
        return outcome;
    }

    public void setOutcome(String outcome) {
        this.outcome = outcome;
    }

    public ParentUpdateTestResults withOutcome(String outcome) {
        this.outcome = outcome;
        return this;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public ParentUpdateTestResults withErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
        return this;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public ParentUpdateTestResults withComment(String comment) {
        this.comment = comment;
        return this;
    }

    public String getStartedDate() {
        return startedDate;
    }

    public void setStartedDate(String startedDate) {
        this.startedDate = startedDate;
    }

    public ParentUpdateTestResults withStartedDate(String startedDate) {
        this.startedDate = startedDate;
        return this;
    }

    public String getCompletedDate() {
        return completedDate;
    }

    public void setCompletedDate(String completedDate) {
        this.completedDate = completedDate;
    }

    public ParentUpdateTestResults withCompletedDate(String completedDate) {
        this.completedDate = completedDate;
        return this;
    }

    public Long getDurationInMs() {
        return durationInMs;
    }

    public void setDurationInMs(Long durationInMs) {
        this.durationInMs = durationInMs;
    }

    public ParentUpdateTestResults withDurationInMs(Long durationInMs) {
        this.durationInMs = durationInMs;
        return this;
    }

    public List<AssociatedBug> getAssociatedBugs() {
        return associatedBugs;
    }

    public void setAssociatedBugs(List<AssociatedBug> associatedBugs) {
        this.associatedBugs = associatedBugs;
    }

    public ParentUpdateTestResults withAssociatedBugs(List<AssociatedBug> associatedBugs) {
        this.associatedBugs = associatedBugs;
        return this;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(ParentUpdateTestResults.class.getName()).append('@').append(Integer.toHexString(System.identityHashCode(this))).append('[');
        sb.append("id");
        sb.append('=');
        sb.append(((this.id == null)?"<null>":this.id));
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
        sb.append("startedDate");
        sb.append('=');
        sb.append(((this.startedDate == null)?"<null>":this.startedDate));
        sb.append(',');
        sb.append("completedDate");
        sb.append('=');
        sb.append(((this.completedDate == null)?"<null>":this.completedDate));
        sb.append(',');
        sb.append("durationInMs");
        sb.append('=');
        sb.append(((this.durationInMs == null)?"<null>":this.durationInMs));
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
        result = ((result* 31)+((this.owner == null)? 0 :this.owner.hashCode()));
        result = ((result* 31)+((this.durationInMs == null)? 0 :this.durationInMs.hashCode()));
        result = ((result* 31)+((this.errorMessage == null)? 0 :this.errorMessage.hashCode()));
        result = ((result* 31)+((this.startedDate == null)? 0 :this.startedDate.hashCode()));
        result = ((result* 31)+((this.priority == null)? 0 :this.priority.hashCode()));
        result = ((result* 31)+((this.completedDate == null)? 0 :this.completedDate.hashCode()));
        result = ((result* 31)+((this.computerName == null)? 0 :this.computerName.hashCode()));
        result = ((result* 31)+((this.associatedBugs == null)? 0 :this.associatedBugs.hashCode()));
        result = ((result* 31)+((this.resolutionState == null)? 0 :this.resolutionState.hashCode()));
        result = ((result* 31)+((this.failureType == null)? 0 :this.failureType.hashCode()));
        result = ((result* 31)+((this.comment == null)? 0 :this.comment.hashCode()));
        result = ((result* 31)+((this.id == null)? 0 :this.id.hashCode()));
        result = ((result* 31)+((this.state == null)? 0 :this.state.hashCode()));
        result = ((result* 31)+((this.outcome == null)? 0 :this.outcome.hashCode()));
        result = ((result* 31)+((this.runBy == null)? 0 :this.runBy.hashCode()));
        return result;
    }

    @Override
    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if ((other instanceof ParentUpdateTestResults) == false) {
            return false;
        }
        ParentUpdateTestResults rhs = ((ParentUpdateTestResults) other);
        return ((((((((((((((((this.owner == rhs.owner)||((this.owner!= null)&&this.owner.equals(rhs.owner)))&&((this.durationInMs == rhs.durationInMs)||((this.durationInMs!= null)&&this.durationInMs.equals(rhs.durationInMs))))&&((this.errorMessage == rhs.errorMessage)||((this.errorMessage!= null)&&this.errorMessage.equals(rhs.errorMessage))))&&((this.startedDate == rhs.startedDate)||((this.startedDate!= null)&&this.startedDate.equals(rhs.startedDate))))&&((this.priority == rhs.priority)||((this.priority!= null)&&this.priority.equals(rhs.priority))))&&((this.completedDate == rhs.completedDate)||((this.completedDate!= null)&&this.completedDate.equals(rhs.completedDate))))&&((this.computerName == rhs.computerName)||((this.computerName!= null)&&this.computerName.equals(rhs.computerName))))&&((this.associatedBugs == rhs.associatedBugs)||((this.associatedBugs!= null)&&this.associatedBugs.equals(rhs.associatedBugs))))&&((this.resolutionState == rhs.resolutionState)||((this.resolutionState!= null)&&this.resolutionState.equals(rhs.resolutionState))))&&((this.failureType == rhs.failureType)||((this.failureType!= null)&&this.failureType.equals(rhs.failureType))))&&((this.comment == rhs.comment)||((this.comment!= null)&&this.comment.equals(rhs.comment))))&&((this.id == rhs.id)||((this.id!= null)&&this.id.equals(rhs.id))))&&((this.state == rhs.state)||((this.state!= null)&&this.state.equals(rhs.state))))&&((this.outcome == rhs.outcome)||((this.outcome!= null)&&this.outcome.equals(rhs.outcome))))&&((this.runBy == rhs.runBy)||((this.runBy!= null)&&this.runBy.equals(rhs.runBy))));
    }

}
