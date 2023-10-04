package com.yupi.springbootinit;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.yupi.springbootinit.config.WxOpenConfig;
import javax.annotation.Resource;

import com.yupi.springbootinit.model.entity.Chart;
import com.yupi.springbootinit.service.ChartService;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

/**
 * 主类测试
 *
 
 
 */
@SpringBootTest
class MainApplicationTests {

    @Resource
    private WxOpenConfig wxOpenConfig;

    @Resource
    private ChartService chartService;

    @Test
    void contextLoads() {
        System.out.println(wxOpenConfig);
    }

    @Test
    void testChartPage(){
        LambdaQueryWrapper<Chart> chartLambdaQueryWrapper = new LambdaQueryWrapper<>();
        chartLambdaQueryWrapper.eq(Chart::getUserId, 1707593350131720194L);
        Page<Chart> page = chartService.page(new Page<>(1, 10), chartLambdaQueryWrapper);
        List<Chart> records = page.getRecords();
        records.forEach(chart -> System.out.println(chart));
    }

}
