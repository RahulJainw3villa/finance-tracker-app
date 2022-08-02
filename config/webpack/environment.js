const { environment } = require('@rails/webpacker')
const { default: Popper } = require('popper.js')

const webpack = require('webpack')

environment.plugins.append("Provide", new webpack.ProvidePlugin({

    $: 'jquery',
    jquery: 'jquery',
    Popper: ['popper.js', 'default']

}))


module.exports = environment
