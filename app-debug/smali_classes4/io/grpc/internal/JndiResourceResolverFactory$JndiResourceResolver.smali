.class final Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;
.super Ljava/lang/Object;
.source "JndiResourceResolverFactory.java"

# interfaces
.implements Lio/grpc/internal/DnsNameResolver$ResourceResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/JndiResourceResolverFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JndiResourceResolver"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;

.field private static final whitespace:Ljava/util/regex/Pattern;


# instance fields
.field private final recordFetcher:Lio/grpc/internal/JndiResourceResolverFactory$RecordFetcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    const-class v0, Lio/grpc/internal/JndiResourceResolverFactory;

    .line 95
    const-class v0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;

    .line 96
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->logger:Ljava/util/logging/Logger;

    .line 98
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->whitespace:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lio/grpc/internal/JndiResourceResolverFactory$RecordFetcher;)V
    .locals 0
    .param p1, "recordFetcher"    # Lio/grpc/internal/JndiResourceResolverFactory$RecordFetcher;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->recordFetcher:Lio/grpc/internal/JndiResourceResolverFactory$RecordFetcher;

    .line 104
    return-void
.end method

.method static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "txtRecord"    # Ljava/lang/String;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 170
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 171
    .local v1, "inquote":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 172
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 173
    .local v3, "c":C
    const/16 v4, 0x22

    if-nez v1, :cond_1

    .line 174
    const/16 v5, 0x20

    if-ne v3, v5, :cond_0

    .line 175
    goto :goto_2

    .line 176
    :cond_0
    if-ne v3, v4, :cond_4

    .line 177
    const/4 v1, 0x1

    .line 178
    goto :goto_2

    .line 181
    :cond_1
    if-ne v3, v4, :cond_2

    .line 182
    const/4 v1, 0x0

    .line 183
    goto :goto_2

    .line 184
    :cond_2
    const/16 v5, 0x5c

    if-ne v3, v5, :cond_4

    .line 185
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 186
    if-eq v3, v4, :cond_4

    if-ne v3, v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 189
    :cond_4
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    .end local v3    # "c":C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public resolveSrv(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/grpc/internal/DnsNameResolver$SrvRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    sget-object v0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 129
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const-string v5, "About to query SRV records for {0}"

    invoke-virtual {v0, v1, v5, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->recordFetcher:Lio/grpc/internal/JndiResourceResolverFactory$RecordFetcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dns:///"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 133
    const-string v5, "SRV"

    invoke-interface {v1, v5, v4}, Lio/grpc/internal/JndiResourceResolverFactory$RecordFetcher;->getAllRecords(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 134
    .local v1, "rawSrvRecords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-array v5, v3, [Ljava/lang/Object;

    .line 136
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 135
    const-string v6, "Found {0} SRV records"

    invoke-virtual {v0, v4, v6, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .local v0, "srvRecords":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/DnsNameResolver$SrvRecord;>;"
    const/4 v4, 0x0

    .line 140
    .local v4, "first":Ljava/lang/Exception;
    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 141
    .local v5, "level":Ljava/util/logging/Level;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 143
    .local v7, "rawSrv":Ljava/lang/String;
    :try_start_0
    sget-object v8, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->whitespace:Ljava/util/regex/Pattern;

    const/4 v9, 0x5

    invoke-virtual {v8, v7, v9}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, "parts":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    const-string v10, "Bad SRV Record: %s"

    invoke-static {v9, v10, v7}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 146
    const/4 v9, 0x3

    aget-object v10, v8, v9

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 149
    new-instance v10, Lio/grpc/internal/DnsNameResolver$SrvRecord;

    aget-object v9, v8, v9

    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v10, v9, v11}, Lio/grpc/internal/DnsNameResolver$SrvRecord;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    nop

    .end local v8    # "parts":[Ljava/lang/String;
    goto :goto_2

    .line 147
    .restart local v8    # "parts":[Ljava/lang/String;
    :cond_3
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Returned SRV host does not end in period: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v9, v8, v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "srvRecords":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/DnsNameResolver$SrvRecord;>;"
    .end local v1    # "rawSrvRecords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "first":Ljava/lang/Exception;
    .end local v5    # "level":Ljava/util/logging/Level;
    .end local v7    # "rawSrv":Ljava/lang/String;
    .end local p1    # "host":Ljava/lang/String;
    throw v10
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v8    # "parts":[Ljava/lang/String;
    .restart local v0    # "srvRecords":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/DnsNameResolver$SrvRecord;>;"
    .restart local v1    # "rawSrvRecords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "first":Ljava/lang/Exception;
    .restart local v5    # "level":Ljava/util/logging/Level;
    .restart local v7    # "rawSrv":Ljava/lang/String;
    .restart local p1    # "host":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 151
    .local v8, "e":Ljava/lang/RuntimeException;
    sget-object v9, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->logger:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to construct SRV record "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    if-nez v4, :cond_4

    .line 153
    move-object v4, v8

    .line 154
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 157
    .end local v7    # "rawSrv":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :cond_4
    :goto_2
    goto :goto_0

    .line 158
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v4, :cond_6

    goto :goto_3

    .line 159
    :cond_6
    throw v4

    .line 161
    :cond_7
    :goto_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public resolveTxt(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "serviceConfigHostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 108
    sget-object v0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 109
    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const-string v5, "About to query TXT records for {0}"

    invoke-virtual {v0, v1, v5, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->recordFetcher:Lio/grpc/internal/JndiResourceResolverFactory$RecordFetcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dns:///"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 113
    const-string v5, "TXT"

    invoke-interface {v1, v5, v4}, Lio/grpc/internal/JndiResourceResolverFactory$RecordFetcher;->getAllRecords(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 114
    .local v1, "serviceConfigRawTxtRecords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-array v3, v3, [Ljava/lang/Object;

    .line 116
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 115
    const-string v2, "Found {0} TXT records"

    invoke-virtual {v0, v4, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 119
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .local v0, "serviceConfigTxtRecords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 121
    .local v3, "serviceConfigRawTxtRecord":Ljava/lang/String;
    invoke-static {v3}, Lio/grpc/internal/JndiResourceResolverFactory$JndiResourceResolver;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v3    # "serviceConfigRawTxtRecord":Ljava/lang/String;
    goto :goto_0

    .line 123
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method
