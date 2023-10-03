package com.yupi.springbootinit.model.dto.chart;


import lombok.Data;

import java.io.Serializable;


/**
 * 创建请求
 *
 
 
 */
@Data
public class ChartAddRequest implements Serializable {


    /**
     * 分析目标
     */
    private String goal;


    /**
     * 名称
     */
    private String name;

    /**
     * 图标数据
     */
    private String chartData;

    /**
     * 图标类型
     */
    private String chartType;



    private static final long serialVersionUID = 1L;
}