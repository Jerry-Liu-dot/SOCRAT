'use strict'
BaseCtrl = require 'scripts/BaseClasses/BaseController.coffee'
module.exports = class MyModuleMainCtrl extends BaseCtrl
    @inject '$timeout', '$scope', 'socrat_analysis_JiaruiLiu_dataService', 'socrat_analysis_JiaruiLiu_msgService'
    initialize: ->
        @text = "Controller Example"
        @hello = ""
        @handleHello = () -> 
            @hello = "hello"
        @msgManager = @socrat_analysis_JiaruiLiu_msgService
        @dataService = @socrat_analysis_JiaruiLiu_dataService
        @handleData = () ->
            @dataService.getData().then (data) =>
                console.log(data) 