package entity;

public class AugustdbPrivance {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column augustdb_privance.provinceID
     *
     * @mbg.generated
     */
    private String provinceid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column augustdb_privance.provinceName
     *
     * @mbg.generated
     */
    private String provincename;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column augustdb_privance.provinceID
     *
     * @return the value of augustdb_privance.provinceID
     *
     * @mbg.generated
     */
    public String getProvinceid() {
        return provinceid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column augustdb_privance.provinceID
     *
     * @param provinceid the value for augustdb_privance.provinceID
     *
     * @mbg.generated
     */
    public void setProvinceid(String provinceid) {
        this.provinceid = provinceid == null ? null : provinceid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column augustdb_privance.provinceName
     *
     * @return the value of augustdb_privance.provinceName
     *
     * @mbg.generated
     */
    public String getProvincename() {
        return provincename;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column augustdb_privance.provinceName
     *
     * @param provincename the value for augustdb_privance.provinceName
     *
     * @mbg.generated
     */
    public void setProvincename(String provincename) {
        this.provincename = provincename == null ? null : provincename.trim();
    }
}