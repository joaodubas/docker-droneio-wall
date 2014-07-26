# Drone Wall

Docker image with [wall display][droneio-wall] for [drone.io][droneio]
continuous integration server.

## Running

The image expect a folder with the `sqlite` database used by [drone.io][droneio]
to be available, the best way to get this is to use a [data volume container]
[docker-data-volume].

The wall display server is available in exposed on port _8080_.

Finally, remember to pass the list of repositories to be displayed on the wall.

```bash
docker run
    -d
    --name droneio-wall
    joaodubas/droneio-wall
    --repos=<list,of,repos>
```

## License

> Copyright (c) 2014 Joao Paulo Dubas <joao.dubas@gmail.com>
>
> Permission is hereby granted, free of charge, to any person obtaining a copy
> of this software and associated documentation files (the "Software"), to deal
> in the Software without restriction, including without limitation the rights
> to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> copies of the Software, and to permit persons to whom the Software is
> furnished to do so, subject to the following conditions:
>
> The above copyright notice and this permission notice shall be included in
> all copies or substantial portions of the Software.
>
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> THE SOFTWARE.
