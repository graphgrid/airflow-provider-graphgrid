def get_provider_info():
    return {
        "package-name": "airflow-provider-graphgrid",
        "name": "GraphGrid Provider Package", # Required
        "description": "Additional airflow functionality for GraphGrid CDP",
        "extra-links": ["graphgrid_provider.operators.graphgrid_docker.GraphGridDockerOperator"],
        "versions": ["0.0.1"] # Required
    }