package cn.beizhen.config;

import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * SpringSecurity
 * WebSecurityConfigurerAdapter：自定义Security策略
 * AuthenticationManagerBuilder：自定义认证策略
 * @EnableWebSecurity：开启WebSecurity模式
 */
@EnableWebSecurity
public class SecunityConfig extends WebSecurityConfigurerAdapter {
    //链式编程 授权
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        //首页所有人可以访问，功能页只有对应有权限的人访问
        http.authorizeRequests()
                .antMatchers("/").permitAll()  //这是配置所有人都可以访问
                .antMatchers("/success").hasRole("vip1")  //这是配置这个页面只有vip1能访问*/
                .antMatchers("/vip1").hasRole("vip1")
                .antMatchers("/vip2").hasRole("vip2")
                .antMatchers("/vip3").hasRole("vip3");

        //没有权限默认会到登录页面，需要开启登录的页面，loginPage去到自己定制的页面,loginProcessingUrl登录认证的是这个URL
        //usernameParameter 如果登录界面name里的值不一样就这样写
        http.formLogin().loginPage("/login.html")
                .usernameParameter("username")
                .passwordParameter("password")
                .loginProcessingUrl("/index.html");

        //防止网址攻击
        http.csrf().disable();  //关闭csrf 防止跨站攻击
        //注销会调到首页，这是开启注销功能,注销成功去首页
        http.logout().logoutSuccessUrl("/login.html");

        //开启记住我功能 本质就是Cookic实现,默认保存两周，自定义接收前端的参数
        http.rememberMe().rememberMeParameter("remeber");
    }

    //认证，Springboot 2.1.x 可以直接使用
    //密码编码：PasswordEncoder
    //在Spring Secutiy 5.0+新增了很多的加密方式 , passwordEncoder 密码加密之后需要编码password(new BCryptPasswordEncoder().encode("123456"))
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication().passwordEncoder(new BCryptPasswordEncoder())
                .withUser("jinx").password(new BCryptPasswordEncoder().encode("123456")).roles("vip1","vip2")
                .and().withUser("root").password(new BCryptPasswordEncoder().encode("123456")).roles("vip1","vip2","vip3");



    }
}
