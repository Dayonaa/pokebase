module.exports = {
  client: {
    service: {
      name: "pokeapi",
      localSchemaFile: "lib/graphql/schema.graphql",
    },
    includes: ["lib/graphql/**/*.graphql"],
  },
};
