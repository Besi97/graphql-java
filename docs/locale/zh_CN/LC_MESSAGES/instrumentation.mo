��          �               \  ^   ]  �   �     B     a     z  �   �      k     �  �   �     :     X  �   n  |     �   �  `   $  �   �  �   j  I    �   O	  �  
  d   �  �   �  3   �  *   �  +   �  �     ;        T  �   m     
     &  �   <  N   �  T   5  P   �  �   �  �   �  �     u   �   A detailed tracing map will be created and placed in the ``extensions`` section of the result. An implementation of ``Instrumentation`` needs to implement the "begin" step methods that represent the execution of a graphql query. Apollo Tracing Instrumentation Chaining Instrumentation Custom Instrumentation Each step must give back a non null ``graphql.execution.instrumentation.InstrumentationContext`` object which will be called back when the step completes, and will be told that it succeeded or failed with a Throwable. Field Validation Instrumentation Instrumentation It follows the Apollo proposed tracing format defined at `https://github.com/apollographql/apollo-tracing <https://github.com/apollographql/apollo-tracing>`_ It would return a result like So given a query like The ``graphql.execution.instrumentation.Instrumentation`` interface allows you to inject code that can observe the execution of a query and also change the runtime behaviour. The following is a basic custom ``Instrumentation`` that measures overall execution time and puts it into a stateful object. The primary use case for this is to allow say performance monitoring and custom logging but it could be used for many different purposes. When you build the ```Graphql`` object you can specify what ``Instrumentation`` to use (if any). You can combine multiple ``Instrumentation`` objects together using the ``graphql.execution.instrumentation.ChainedInstrumentation`` class which accepts a list of ``Instrumentation`` objects and calls them in that defined order. You can make you own custom implementation of ``FieldValidation`` or you can use the ``SimpleFieldValidation`` class to add simple per field checks rules. ``graphql.execution.instrumentation.fieldvalidation.FieldValidationInstrumentation`` is an ``Instrumentation`` implementation that can be used to validate fields and their arguments before query execution.  If errors are returned during this process then the query execution is aborted and the errors will be in the query result. ``graphql.execution.instrumentation.tracing.TracingInstrumentation`` is an ``Instrumentation`` implementation that creates tracing information about the query that is being executed. Project-Id-Version: graphql-java current
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-11-11 19:21+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_Hans_CN
Language-Team: zh_Hans_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
 详细的跟踪信息（ tracing map）会放在查询结果的 ``extensions（扩展）`` 部分。 要实现 ``Instrumentation`` ，需要实现多个 "begin" 开头的方法。这方法会在查询执行过程中，每一步骤开始前被调用。 Apollo跟踪与拦截（ Tracing Instrumentation） 链式拦截（Chaining Instrumentation） 定制拦截器（Custom Instrumentation） 所有回调方法，都应该返回 ``graphql.execution.instrumentation.InstrumentationContext`` 对象，这个对象会在本步骤完成时被回调用，回调用时会告知数据的获取结果，如果出错，可以获取 Throwable 对象。. 字段校验拦截器（Field Validation Instrumentation） 拦截器Instrumentation 它按照 Apollo 跟踪格式  `https://github.com/apollographql/apollo-tracing <https://github.com/apollographql/apollo-tracing>`_ 来收集跟踪信息。 会返回如下的结果： 如以下的查询： 通过实现 ``graphql.execution.instrumentation.Instrumentation`` 接口，你可以在执行查询的过程中注入定制代码。并可以修改运行期的行为。 下面是一个定制的 ``Instrumentation`` 。作用是测量执行时间。 它的主要用途是性能监控和定制日志，但也可以完成其它任务。 当创建 ```Graphql`` 对象时，可以绑定相关的 ``Instrumentation`` 。 你可以用  ``graphql.execution.instrumentation.ChainedInstrumentation``  把多个 ``Instrumentation`` 连接起来。这些 ``Instrumentation`` 对象会按顺序被调用。 你可以编写自己的``FieldValidation`` 实现，或者直接用 ``SimpleFieldValidation`` 去为每个field定义校验逻辑。 ``graphql.execution.instrumentation.fieldvalidation.FieldValidationInstrumentation`` 拦截器，可以在执行查询前校验字段和字段参数。如果校验失败，查询将停止，并返回错误信息。 ``graphql.execution.instrumentation.tracing.TracingInstrumentation`` 是一个可以收集跟踪信息的拦截器。 