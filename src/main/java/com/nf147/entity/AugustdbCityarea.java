package entity;

public class AugustdbCityarea {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column augustdb_cityarea.areaID
     *
     * @mbg.generated
     */
    private String areaid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column augustdb_cityarea.cityID
     *
     * @mbg.generated
     */
    private String cityid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column augustdb_cityarea.rangeID
     *
     * @mbg.generated
     */
    private String rangeid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column augustdb_cityarea.cityName
     *
     * @mbg.generated
     */
    private String cityname;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column augustdb_cityarea.areaID
     *
     * @return the value of augustdb_cityarea.areaID
     *
     * @mbg.generated
     */
    public String getAreaid() {
        return areaid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column augustdb_cityarea.areaID
     *
     * @param areaid the value for augustdb_cityarea.areaID
     *
     * @mbg.generated
     */
    public void setAreaid(String areaid) {
        this.areaid = areaid == null ? null : areaid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column augustdb_cityarea.cityID
     *
     * @return the value of augustdb_cityarea.cityID
     *
     * @mbg.generated
     */
    public String getCityid() {
        return cityid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column augustdb_cityarea.cityID
     *
     * @param cityid the value for augustdb_cityarea.cityID
     *
     * @mbg.generated
     */
    public void setCityid(String cityid) {
        this.cityid = cityid == null ? null : cityid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column augustdb_cityarea.rangeID
     *
     * @return the value of augustdb_cityarea.rangeID
     *
     * @mbg.generated
     */
    public String getRangeid() {
        return rangeid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column augustdb_cityarea.rangeID
     *
     * @param rangeid the value for augustdb_cityarea.rangeID
     *
     * @mbg.generated
     */
    public void setRangeid(String rangeid) {
        this.rangeid = rangeid == null ? null : rangeid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column augustdb_cityarea.cityName
     *
     * @return the value of augustdb_cityarea.cityName
     *
     * @mbg.generated
     */
    public String getCityname() {
        return cityname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column augustdb_cityarea.cityName
     *
     * @param cityname the value for augustdb_cityarea.cityName
     *
     * @mbg.generated
     */
    public void setCityname(String cityname) {
        this.cityname = cityname == null ? null : cityname.trim();
    }
}