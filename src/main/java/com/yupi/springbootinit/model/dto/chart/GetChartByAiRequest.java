package com.yupi.springbootinit.model.dto.chart;


import lombok.Data;

import java.io.Serializable;


/**
 * 创建请求
 *
 */
@Data
public class GetChartByAiRequest implements Serializable {

    /**
     * 名称
     */
    private String name;

    /**
     * 目标
     */
    private String goal;

    /**
     * 图标类型
     */
    private String chartType;



    private static final long serialVersionUID = 1L;
}