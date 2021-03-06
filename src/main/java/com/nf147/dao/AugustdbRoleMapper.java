package dao;

import entity.AugustdbRole;
import java.util.List;

public interface AugustdbRoleMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table augustdb_role
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(String roleid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table augustdb_role
     *
     * @mbg.generated
     */
    int insert(AugustdbRole record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table augustdb_role
     *
     * @mbg.generated
     */
    AugustdbRole selectByPrimaryKey(String roleid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table augustdb_role
     *
     * @mbg.generated
     */
    List<AugustdbRole> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table augustdb_role
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(AugustdbRole record);
}