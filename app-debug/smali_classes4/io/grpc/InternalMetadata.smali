.class public final Lio/grpc/InternalMetadata;
.super Ljava/lang/Object;
.source "InternalMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/InternalMetadata$TrustedAsciiMarshaller;
    }
.end annotation


# static fields
.field public static final BASE64_ENCODING_OMIT_PADDING:Lcom/google/common/io/BaseEncoding;

.field public static final US_ASCII:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/grpc/InternalMetadata;->US_ASCII:Ljava/nio/charset/Charset;

    .line 51
    sget-object v0, Lio/grpc/Metadata;->BASE64_ENCODING_OMIT_PADDING:Lcom/google/common/io/BaseEncoding;

    sput-object v0, Lio/grpc/InternalMetadata;->BASE64_ENCODING_OMIT_PADDING:Lcom/google/common/io/BaseEncoding;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static headerCount(Lio/grpc/Metadata;)I
    .locals 1
    .param p0, "md"    # Lio/grpc/Metadata;

    .line 83
    invoke-virtual {p0}, Lio/grpc/Metadata;->headerCount()I

    move-result v0

    return v0
.end method

.method public static keyOf(Ljava/lang/String;Lio/grpc/InternalMetadata$TrustedAsciiMarshaller;)Lio/grpc/Metadata$Key;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/grpc/InternalMetadata$TrustedAsciiMarshaller<",
            "TT;>;)",
            "Lio/grpc/Metadata$Key<",
            "TT;>;"
        }
    .end annotation

    .line 56
    .local p1, "marshaller":Lio/grpc/InternalMetadata$TrustedAsciiMarshaller;, "Lio/grpc/InternalMetadata$TrustedAsciiMarshaller<TT;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 57
    .local v0, "isPseudo":Z
    :cond_0
    invoke-static {p0, v0, p1}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;ZLio/grpc/Metadata$TrustedAsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v1

    return-object v1
.end method

.method public static keyOf(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/grpc/Metadata$AsciiMarshaller<",
            "TT;>;)",
            "Lio/grpc/Metadata$Key<",
            "TT;>;"
        }
    .end annotation

    .line 62
    .local p1, "marshaller":Lio/grpc/Metadata$AsciiMarshaller;, "Lio/grpc/Metadata$AsciiMarshaller<TT;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 63
    .local v0, "isPseudo":Z
    :cond_0
    invoke-static {p0, v0, p1}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;ZLio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v1

    return-object v1
.end method

.method public static varargs newMetadata(I[[B)Lio/grpc/Metadata;
    .locals 1
    .param p0, "usedNames"    # I
    .param p1, "binaryValues"    # [[B

    .line 73
    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0, p0, p1}, Lio/grpc/Metadata;-><init>(I[[B)V

    return-object v0
.end method

.method public static varargs newMetadata([[B)Lio/grpc/Metadata;
    .locals 1
    .param p0, "binaryValues"    # [[B

    .line 68
    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0, p0}, Lio/grpc/Metadata;-><init>([[B)V

    return-object v0
.end method

.method public static newMetadataWithParsedValues(I[Ljava/lang/Object;)Lio/grpc/Metadata;
    .locals 1
    .param p0, "usedNames"    # I
    .param p1, "namesAndValues"    # [Ljava/lang/Object;

    .line 125
    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0, p0, p1}, Lio/grpc/Metadata;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static parsedValue(Lio/grpc/Metadata$BinaryStreamMarshaller;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$BinaryStreamMarshaller<",
            "TT;>;TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 109
    .local p0, "marshaller":Lio/grpc/Metadata$BinaryStreamMarshaller;, "Lio/grpc/Metadata$BinaryStreamMarshaller<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/grpc/Metadata$LazyValue;

    invoke-direct {v0, p0, p1}, Lio/grpc/Metadata$LazyValue;-><init>(Lio/grpc/Metadata$BinaryStreamMarshaller;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static serialize(Lio/grpc/Metadata;)[[B
    .locals 1
    .param p0, "md"    # Lio/grpc/Metadata;

    .line 78
    invoke-virtual {p0}, Lio/grpc/Metadata;->serialize()[[B

    move-result-object v0

    return-object v0
.end method

.method public static serializePartial(Lio/grpc/Metadata;)[Ljava/lang/Object;
    .locals 1
    .param p0, "md"    # Lio/grpc/Metadata;

    .line 97
    invoke-virtual {p0}, Lio/grpc/Metadata;->serializePartial()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
