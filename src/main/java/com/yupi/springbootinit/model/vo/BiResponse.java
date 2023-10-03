package com.yupi.springbootinit.model.vo;


import lombok.Data;

import java.io.Serializable;

/**
 * Bi 返回结果
 */
@Data
public class BiResponse {
    private long chartId;
    private String genChart;
    private String genResult;
}
