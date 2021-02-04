import { connect } from 'react-redux';

const mapStateToProps = state => ({
    pokemon: fetchPokemon(state)
    moves: 
})

const mapDispatchToProps = dispatch => ({
    requestAllPokemon: () => dispatch(requestAllPokemon())
})

export default connect(mapStateToProps, mapDispatchToProps)(PokemonIndex)