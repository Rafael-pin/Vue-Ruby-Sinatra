import ApolloClient from 'apollo-boost'

export default new ApolloClient({
  uri: 'http://localhost:9292/graphql',
  fetchOptions: {
    mode: 'no-cors',
  },
})