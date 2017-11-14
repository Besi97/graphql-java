��          �               |     }  �   �  y   m     �       9     :   V  +   �  ,   �  +   �  2     -   I  �   w  h   %  u   �  g     V   l  3   �  r   �  q   j      �  �  �     �	  �   �	  y   s
     �
       9   "  :   \  +   �  ,   �  +   �  2     -   O  �   }  h   +  u   �  g   
  V   r  3   �  r   �  q   p      �   Runtime Exceptions Runtime exceptions can be thrown by the graphql engine if certain exceptional situations are encountered.  The following are a list of the exceptions that can be thrown all the way out of a ``graphql.execute(...)`` call. These are not graphql errors in execution but rather totally unacceptable conditions in which to execute a graphql query. `graphql.AssertException` `graphql.GraphQLException` `graphql.execution.InputMapDefinesTooManyFieldsException` `graphql.execution.NonNullableValueCoercedAsNullException` `graphql.execution.UnresolvedTypeException` `graphql.schema.CoercingParseValueException` `graphql.schema.CoercingSerializeException` `graphql.schema.validation.InvalidSchemaException` graphql.schema.GraphQLSchema.Builder#build()` is thrown as a general purpose runtime exception, for example if the code cant access a named field when examining a POJO, it is analogous to a RuntimeException if you will. is thrown as a low level code assertion exception for truly unexpected code conditions, things we assert is thrown if a  graphql.schema.TypeResolver` fails to provide a concrete object type given a interface or union type. is thrown if a map used for an input type object contains more keys than is defined in that input type. is thrown if a non null variable argument is coerced as a null value during execution. is thrown if the schema is not valid when built via is thrown when a value cannot be parsed by a Scalar type, for example a String input value being parsed as an Int. is thrown when a value cannot be serialised by a Scalar type, for example a String value being coerced as an Int. should never happen in practice. Project-Id-Version: graphql-java current
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
 Runtime Exceptions Runtime exceptions can be thrown by the graphql engine if certain exceptional situations are encountered.  The following are a list of the exceptions that can be thrown all the way out of a ``graphql.execute(...)`` call. These are not graphql errors in execution but rather totally unacceptable conditions in which to execute a graphql query. `graphql.AssertException` `graphql.GraphQLException` `graphql.execution.InputMapDefinesTooManyFieldsException` `graphql.execution.NonNullableValueCoercedAsNullException` `graphql.execution.UnresolvedTypeException` `graphql.schema.CoercingParseValueException` `graphql.schema.CoercingSerializeException` `graphql.schema.validation.InvalidSchemaException` graphql.schema.GraphQLSchema.Builder#build()` is thrown as a general purpose runtime exception, for example if the code cant access a named field when examining a POJO, it is analogous to a RuntimeException if you will. is thrown as a low level code assertion exception for truly unexpected code conditions, things we assert is thrown if a  graphql.schema.TypeResolver` fails to provide a concrete object type given a interface or union type. is thrown if a map used for an input type object contains more keys than is defined in that input type. is thrown if a non null variable argument is coerced as a null value during execution. is thrown if the schema is not valid when built via is thrown when a value cannot be parsed by a Scalar type, for example a String input value being parsed as an Int. is thrown when a value cannot be serialised by a Scalar type, for example a String value being coerced as an Int. should never happen in practice. 