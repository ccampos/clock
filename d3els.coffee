width = 300
height = 300
hours = [1..12]
red = '#ff3333'
blue = '#33cf33'

cx = width / 2
cy = height / 2
radius = 80
diameter = radius * 2
circumference = Math.PI * diameter

calcCoords = (cx, cy, r, a) ->
    x = Math.round(cx + r * Math.cos a)
    y = Math.round(cy + r * Math.sin a)

    return {
        x: x
        y: y
    }

toRadians = (degrees) ->
    return Math.PI / 180 * degrees

coords70 = calcCoords cx, cy, radius, toRadians 70

# degrees between each hour
degreesPerHour = 360 / 12

addCirclePoint = (degrees) ->
    coords = calcCoords cx, cy, radius, toRadians degrees
    svg.append('circle')
        .style('fill', 'none')
        .style('stroke', blue)
        .style('stroke-width', 3)
        .attr('cx', coords.x)
        .attr('cy', coords.y)
        .attr('r', 3)

svg = d3.select('body').append('svg')
    .style('background', '#cccccc')
    .attr('width', width)
    .attr('height', height)

center = svg.append('circle')
    .style('fill', 'none')
    .style('stroke', blue)
    .style('stroke-width', 3)
    .attr('cx', cx)
    .attr('cy', cy)
    .attr('r', 3)

for i in hours
    curDeg = i * degreesPerHour
    addCirclePoint curDeg
