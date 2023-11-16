
package com.pojoclass;

import java.util.ArrayList;
import java.util.List;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class SampleJSON {

    @SerializedName("id")
    @Expose
    private String id;
    @SerializedName("type")
    @Expose
    private String type;
    @SerializedName("name")
    @Expose
    private String name;
    @SerializedName("ppu")
    @Expose
    private Double ppu;
    @SerializedName("batters")
    @Expose
    private Batters batters;
    @SerializedName("topping")
    @Expose
    private List<Topping> topping = new ArrayList<Topping>();

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public SampleJSON withId(String id) {
        this.id = id;
        return this;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public SampleJSON withType(String type) {
        this.type = type;
        return this;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public SampleJSON withName(String name) {
        this.name = name;
        return this;
    }

    public Double getPpu() {
        return ppu;
    }

    public void setPpu(Double ppu) {
        this.ppu = ppu;
    }

    public SampleJSON withPpu(Double ppu) {
        this.ppu = ppu;
        return this;
    }

    public Batters getBatters() {
        return batters;
    }

    public void setBatters(Batters batters) {
        this.batters = batters;
    }

    public SampleJSON withBatters(Batters batters) {
        this.batters = batters;
        return this;
    }

    public List<Topping> getTopping() {
        return topping;
    }

    public void setTopping(List<Topping> topping) {
        this.topping = topping;
    }

    public SampleJSON withTopping(List<Topping> topping) {
        this.topping = topping;
        return this;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(SampleJSON.class.getName()).append('@').append(Integer.toHexString(System.identityHashCode(this))).append('[');
        sb.append("id");
        sb.append('=');
        sb.append(((this.id == null)?"<null>":this.id));
        sb.append(',');
        sb.append("type");
        sb.append('=');
        sb.append(((this.type == null)?"<null>":this.type));
        sb.append(',');
        sb.append("name");
        sb.append('=');
        sb.append(((this.name == null)?"<null>":this.name));
        sb.append(',');
        sb.append("ppu");
        sb.append('=');
        sb.append(((this.ppu == null)?"<null>":this.ppu));
        sb.append(',');
        sb.append("batters");
        sb.append('=');
        sb.append(((this.batters == null)?"<null>":this.batters));
        sb.append(',');
        sb.append("topping");
        sb.append('=');
        sb.append(((this.topping == null)?"<null>":this.topping));
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
        result = ((result* 31)+((this.ppu == null)? 0 :this.ppu.hashCode()));
        result = ((result* 31)+((this.batters == null)? 0 :this.batters.hashCode()));
        result = ((result* 31)+((this.name == null)? 0 :this.name.hashCode()));
        result = ((result* 31)+((this.id == null)? 0 :this.id.hashCode()));
        result = ((result* 31)+((this.type == null)? 0 :this.type.hashCode()));
        result = ((result* 31)+((this.topping == null)? 0 :this.topping.hashCode()));
        return result;
    }

    @Override
    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if ((other instanceof SampleJSON) == false) {
            return false;
        }
        SampleJSON rhs = ((SampleJSON) other);
        return (((((((this.ppu == rhs.ppu)||((this.ppu!= null)&&this.ppu.equals(rhs.ppu)))&&((this.batters == rhs.batters)||((this.batters!= null)&&this.batters.equals(rhs.batters))))&&((this.name == rhs.name)||((this.name!= null)&&this.name.equals(rhs.name))))&&((this.id == rhs.id)||((this.id!= null)&&this.id.equals(rhs.id))))&&((this.type == rhs.type)||((this.type!= null)&&this.type.equals(rhs.type))))&&((this.topping == rhs.topping)||((this.topping!= null)&&this.topping.equals(rhs.topping))));
    }

}
