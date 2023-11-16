
package com.TFsSuite;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class ParentCreateTFsTestSuite {

    @SerializedName("suiteType")
    @Expose
    private String suiteType = "StaticTestSuite";
    @SerializedName("name")
    @Expose
    private String name = "Ashirbad-TempAutomationSuite";

    public String getSuiteType() {
        return suiteType;
    }

    public void setSuiteType(String suiteType) {
        this.suiteType = suiteType;
    }

    public ParentCreateTFsTestSuite withSuiteType(String suiteType) {
        this.suiteType = suiteType;
        return this;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ParentCreateTFsTestSuite withName(String name) {
        this.name = name;
        return this;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(ParentCreateTFsTestSuite.class.getName()).append('@').append(Integer.toHexString(System.identityHashCode(this))).append('[');
        sb.append("suiteType");
        sb.append('=');
        sb.append(((this.suiteType == null)?"<null>":this.suiteType));
        sb.append(',');
        sb.append("name");
        sb.append('=');
        sb.append(((this.name == null)?"<null>":this.name));
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
        result = ((result* 31)+((this.name == null)? 0 :this.name.hashCode()));
        result = ((result* 31)+((this.suiteType == null)? 0 :this.suiteType.hashCode()));
        return result;
    }

    @Override
    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if ((other instanceof ParentCreateTFsTestSuite) == false) {
            return false;
        }
        ParentCreateTFsTestSuite rhs = ((ParentCreateTFsTestSuite) other);
        return (((this.name == rhs.name)||((this.name!= null)&&this.name.equals(rhs.name)))&&((this.suiteType == rhs.suiteType)||((this.suiteType!= null)&&this.suiteType.equals(rhs.suiteType))));
    }

}
