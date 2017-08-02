#  This is a manifest file that'll be compiled into application.js, which will include all the files
#  listed below.

#  Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
#  or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.

#  It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
#  compiled file.

#= require paper
#= require jquery
#= require jquery_ujs
#= require underscore
#= require bootstrap-sprockets

window.Utility = {}
window.Utility.paperSetup = (id, op) ->
  dom = if typeof id == 'string' then $('#' + id) else id
  if op and op.width then dom.parent().width(op.width+1)
  if op and op.width then dom.width(op.width+1)
  if op and op.height then dom.parent().height(op.height+1)
  if op and op.height then dom.height(op.height)
  paper.install window
  myPaper = new (paper.PaperScope)
  myPaper.setup dom[0]

  # if typeof id == 'string'
  #   console.info 'Paper.js installed on', id, w, 'x', h
  # else
  #   console.info 'Paper.js installed:', w, 'x', h
  myPaper

