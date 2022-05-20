The airflow-provider-graphgrid package includes Operators and functionality
in order to better streamline Airflow workflows within GraphGrid CDP.

Airflow DAGs can leverage the `GraphGridDockerOperator` and `GraphGridMount`
via

```python
from graphgrid_provider.operators.graphgrid_docker import \
    GraphGridDockerOperator, GraphGridMount
```

and use them as if they were a normal `DockerOperator`

```python
t_0 = GraphGridDockerOperator(task_id='task_0',
                              dag=dag,
                              mounts=[GraphGridMount(target="/some_path",
                                                     source="/some_other_path",
                                                     type="bind")],
                              image="some-image",
                              auto_remove=True,
                              )
```