import boto3

# Substitua 'SEU_NOME_DE_BUCKET' pelo nome desejado para o bucket
bucket_name = 'terraform-docker-alura'
region = 'us-west-2'  # Substitua pela região desejada

# Criação de um cliente S3
s3_client = boto3.client('s3', region_name=region)

try:
    # Criação do bucket
    s3_client.create_bucket(Bucket=bucket_name, CreateBucketConfiguration={'LocationConstraint': region})
    print("Bucket criado com sucesso")
except Exception as e:
    print(f"Erro ao criar o bucket: {e}")