import Vue from 'vue';
import Vuex from 'vuex';
import gql from 'graphql-tag';

import graphqlClient from '../utils/graphql';

Vue.use(Vuex);

export const mutations = {
  AddPet(name, birth_date, weight, profile_photo, kind, vaccines, photos) {
    state.name = name;
    state.birth_date = birth_date;
    state.weight = weight;
    state.profile_photo = profile_photo;
    state.kind = kind;
    state.vaccines = vaccines;
    state.photos = photos;
  },
  AddVaccine(name, date, duration) {
    state.name = name;
    state.date = date;
    state.duration = duration;
  },
  AddPhoto(photo, description) {
    state.photo = photo;
    state.description = description;
  }
};

export const actions = {

  async fetchPet({ commit }, id) {
    const response = await graphqlClient.query({
      query: gql`
        query Pet($petId: ID!) {
          pet(id: $petId) {
            id
            name
            birt_date
            weight
            profile_photo
            kind
            vaccines {
              name
              date
              duration
            }
            photos {
              photo
              description
            }
          }
        }
      `,
      variables: { petId: id },
    });

    commit('setPet', response.data.pet);
  },

  // async fetchAllPets({ commit }) {
  //   const response = await graphqlClient.query({
  //     query: gql`
  //       query Pets() {
  //         pet() {
  //           name
  //           profile_photo
  //         }
  //       }
  //     `
  //   });
  //   commit('setAllPet', response.data.pet);
  // },
};

export const state = {
  pet: []
};

const store = new Vuex.Store({
  state,
  mutations,
  actions
})

export default new Vuex.Store({
  mutations,
  actions,
  state,
});