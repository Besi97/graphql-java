package graphql.schema;

@FunctionalInterface
public interface InputFieldDirectiveTransformer {
    /**
     * Applies transformation on the value of the input field.
     *
     * @param directive The directive getting applied.
     * @param inputField The input field getting resolved.
     * @param value The resolved value of the input field.
     * @return The transformed value of the input field.
     */
    public Object transform(GraphQLAppliedDirective directive, GraphQLInputObjectField inputField, Object value);
}
