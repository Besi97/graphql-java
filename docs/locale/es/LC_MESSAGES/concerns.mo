��          �               l     m     �  $   �     �     �     �     �  �   �     �  ^   �       5     y   I  ^   �  q   "  @   �  '   �  !   �  $     +   D  �  p     �       $        =     M     `     p  �   �     !  ^   /     �  5   �  y   �  ^   L	  q   �	  @   
  '   ^
  !   �
  $   �
  +   �
   Application concerns Caching data Code wiring via dependency injection Context Objects Data authorisation Data pagination Database access For example the edge of your application could be performing user detection and you need that information inside the graphql execution to perform authorisation. HTTP transfer It does not concern itself about other high level application concerns such as the following : JSON endoding The following are great links to read more about this The graphql-java library concentrates on providing an engine for the execution of queries according to the specification. This made up example shows how you can pass yourself information to help execute your queries. You can pass in a context object during query execution that will allow you to better invoke that business logic. You need to push these concerns into your business logic layers. http://graphql.org/learn/authorization/ http://graphql.org/learn/caching/ http://graphql.org/learn/pagination/ http://graphql.org/learn/serving-over-http/ Project-Id-Version: graphql-java current
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-11-11 19:21+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: es
Language-Team: es <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
 Application concerns Caching data Code wiring via dependency injection Context Objects Data authorisation Data pagination Database access For example the edge of your application could be performing user detection and you need that information inside the graphql execution to perform authorisation. HTTP transfer It does not concern itself about other high level application concerns such as the following : JSON endoding The following are great links to read more about this The graphql-java library concentrates on providing an engine for the execution of queries according to the specification. This made up example shows how you can pass yourself information to help execute your queries. You can pass in a context object during query execution that will allow you to better invoke that business logic. You need to push these concerns into your business logic layers. http://graphql.org/learn/authorization/ http://graphql.org/learn/caching/ http://graphql.org/learn/pagination/ http://graphql.org/learn/serving-over-http/ 