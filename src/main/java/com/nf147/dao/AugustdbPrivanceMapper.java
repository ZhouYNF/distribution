package dao;

import entity.AugustdbPrivance;
import java.util.List;

public interface AugustdbPrivanceMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table augustdb_privance
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(String provinceid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table augustdb_privance
     *
     * @mbg.generated
     */
    int insert(AugustdbPrivance record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table augustdb_privance
     *
     * @mbg.generated
     */
    AugustdbPrivance selectByPrimaryKey(String provinceid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table augustdb_privance
     *
     * @mbg.generated
     */
    List<AugustdbPrivance> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table augustdb_privance
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(AugustdbPrivance record);
}