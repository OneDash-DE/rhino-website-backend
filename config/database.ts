import path from "path";

export default ({ env }) => ({
  connection: {
    client: "postgres",
    connection: {
      connectionString: env("POSTGRES_CONNECTION_STRING"),
    },
    useNullAsDefault: true,
  },
});
