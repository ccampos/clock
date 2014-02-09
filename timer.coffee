red = '#ee3124'

svg = d3.select('body').append('svg')
    .style('background', '#cccccc')
    .attr('width', 300)
    .attr('height', 300)

rect = svg.append('rect')
    .style('fill', 'none')
    .style('stroke', '#3333ff')
    .style('stroke-width', 6)
    .attr('width', 100)
    .attr('height', 70)
    .attr('x', 100)
    .attr('y', 100)
    .attr('rx', 3)
    .attr('ry', 3)

rect.on 'mouseover', ->
    console.log 'rectovery'
    rect.on 'mouseover', null

rect.on 'mouseout', ->
    console.log 'rectouty'
    rect.on 'mouseout', null

circle = svg.append('circle')
    .style('fill', 'none')
    .style('stroke', '#ff3333')
    .style('stroke-width', 3)
    .attr('cx', 200)
    .attr('cy', 140)
    .attr('r', 20)

circle.on 'mouseover', ->
    console.log 'circlyovery'

circle.on 'mouseout', ->
    console.log 'circlyouty'
