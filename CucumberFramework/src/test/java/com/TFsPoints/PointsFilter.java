
package com.TFsPoints;

import java.util.ArrayList;
import java.util.List;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class PointsFilter {

    @SerializedName("TestcaseIds")
    @Expose
    private List<Integer> testcaseIds = new ArrayList<Integer>();

    public List<Integer> getTestcaseIds() {
        return testcaseIds;
    }

    public void setTestcaseIds(List<Integer> testcaseIds) {
        this.testcaseIds = testcaseIds;
    }

    public PointsFilter withTestcaseIds(List<Integer> testcaseIds) {
        this.testcaseIds = testcaseIds;
        return this;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(PointsFilter.class.getName()).append('@').append(Integer.toHexString(System.identityHashCode(this))).append('[');
        sb.append("testcaseIds");
        sb.append('=');
        sb.append(((this.testcaseIds == null)?"<null>":this.testcaseIds));
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
        result = ((result* 31)+((this.testcaseIds == null)? 0 :this.testcaseIds.hashCode()));
        return result;
    }

    @Override
    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if ((other instanceof PointsFilter) == false) {
            return false;
        }
        PointsFilter rhs = ((PointsFilter) other);
        return ((this.testcaseIds == rhs.testcaseIds)||((this.testcaseIds!= null)&&this.testcaseIds.equals(rhs.testcaseIds)));
    }

}
