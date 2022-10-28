.class Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;
.super Ljava/lang/Object;
.source "OkHttpClientTransport.java"

# interfaces
.implements Lio/grpc/okhttp/internal/framed/FrameReader$Handler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpClientTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientFrameHandler"
.end annotation


# instance fields
.field firstSettings:Z

.field frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

.field private final logger:Lio/grpc/okhttp/OkHttpFrameLogger;

.field final synthetic this$0:Lio/grpc/okhttp/OkHttpClientTransport;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/FrameReader;)V
    .locals 3
    .param p1, "this$0"    # Lio/grpc/okhttp/OkHttpClientTransport;
    .param p2, "frameReader"    # Lio/grpc/okhttp/internal/framed/FrameReader;

    .line 1072
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1067
    new-instance v0, Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-class v2, Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/OkHttpFrameLogger;-><init>(Ljava/util/logging/Level;Ljava/lang/Class;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->logger:Lio/grpc/okhttp/OkHttpFrameLogger;

    .line 1070
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->firstSettings:Z

    .line 1073
    iput-object p2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    .line 1074
    return-void
.end method

.method private headerBlockSize(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)I"
        }
    .end annotation

    .line 1216
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    const-wide/16 v0, 0x0

    .line 1217
    .local v0, "size":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1218
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/okhttp/internal/framed/Header;

    .line 1219
    .local v3, "header":Lio/grpc/okhttp/internal/framed/Header;
    iget-object v4, v3, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    iget-object v5, v3, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    add-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 1217
    .end local v3    # "header":Lio/grpc/okhttp/internal/framed/Header;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1221
    .end local v2    # "i":I
    :cond_0
    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1222
    long-to-int v2, v0

    return v2
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    .line 1311
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "protocol"    # Lokio/ByteString;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "maxAge"    # J

    .line 1389
    return-void
.end method

.method public data(ZILokio/BufferedSource;I)V
    .locals 6
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "in"    # Lokio/BufferedSource;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1122
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->logger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    .line 1123
    invoke-interface {p3}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v3

    .line 1122
    move v2, p2

    move v4, p4

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lio/grpc/okhttp/OkHttpFrameLogger;->logData(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILokio/Buffer;IZ)V

    .line 1124
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v0, p2}, Lio/grpc/okhttp/OkHttpClientTransport;->getStream(I)Lio/grpc/okhttp/OkHttpClientStream;

    move-result-object v0

    .line 1125
    .local v0, "stream":Lio/grpc/okhttp/OkHttpClientStream;
    if-nez v0, :cond_1

    .line 1126
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v1, p2}, Lio/grpc/okhttp/OkHttpClientTransport;->mayHaveCreatedStream(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1127
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1128
    :try_start_0
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v2

    sget-object v3, Lio/grpc/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v2, p2, v3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 1129
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1130
    int-to-long v1, p4

    invoke-interface {p3, v1, v2}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 1129
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1132
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received data for unknown stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2300(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 1133
    return-void

    .line 1137
    :cond_1
    int-to-long v1, p4

    invoke-interface {p3, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 1139
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 1140
    .local v1, "buf":Lokio/Buffer;
    invoke-interface {p3}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v2

    int-to-long v3, p4

    invoke-virtual {v1, v2, v3, v4}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 1141
    const-string v2, "OkHttpClientTransport$ClientFrameHandler.data"

    .line 1142
    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object v3

    .line 1141
    invoke-static {v2, v3}, Lio/perfmark/PerfMark;->event(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 1143
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1146
    :try_start_2
    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transportDataReceived(Lokio/Buffer;Z)V

    .line 1147
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1151
    .end local v1    # "buf":Lokio/Buffer;
    :goto_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v1, p4}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2412(Lio/grpc/okhttp/OkHttpClientTransport;I)I

    .line 1152
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2400(Lio/grpc/okhttp/OkHttpClientTransport;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$300(Lio/grpc/okhttp/OkHttpClientTransport;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 1153
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1154
    :try_start_3
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2400(Lio/grpc/okhttp/OkHttpClientTransport;)I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->windowUpdate(IJ)V

    .line 1155
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1156
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v1, v5}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2402(Lio/grpc/okhttp/OkHttpClientTransport;I)I

    goto :goto_1

    .line 1155
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 1158
    :cond_2
    :goto_1
    return-void

    .line 1147
    .restart local v1    # "buf":Lokio/Buffer;
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3
.end method

.method public goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V
    .locals 5
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .param p3, "debugData"    # Lokio/ByteString;

    .line 1315
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->logger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/grpc/okhttp/OkHttpFrameLogger;->logGoAway(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILio/grpc/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V

    .line 1316
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->ENHANCE_YOUR_CALM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    if-ne p2, v0, :cond_0

    .line 1317
    invoke-virtual {p3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    .line 1318
    .local v0, "data":Ljava/lang/String;
    invoke-static {}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v4, "%s: Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1320
    const-string v1, "too_many_pings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1321
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2800(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1324
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    iget v0, p2, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lio/grpc/internal/GrpcUtil$Http2Error;->statusForCode(J)Lio/grpc/Status;

    move-result-object v0

    .line 1325
    const-string v1, "Received Goaway"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->augmentDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 1326
    .local v0, "status":Lio/grpc/Status;
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1328
    invoke-virtual {p3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->augmentDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 1330
    :cond_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1100(Lio/grpc/okhttp/OkHttpClientTransport;ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    .line 1331
    return-void
.end method

.method public headers(ZZIILjava/util/List;Lio/grpc/okhttp/internal/framed/HeadersMode;)V
    .locals 9
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .param p6, "headersMode"    # Lio/grpc/okhttp/internal/framed/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;",
            "Lio/grpc/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .line 1171
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->logger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, p3, p5, p2}, Lio/grpc/okhttp/OkHttpFrameLogger;->logHeaders(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILjava/util/List;Z)V

    .line 1172
    const/4 v0, 0x0

    .line 1173
    .local v0, "unknownStream":Z
    const/4 v1, 0x0

    .line 1174
    .local v1, "failedStatus":Lio/grpc/Status;
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2500(Lio/grpc/okhttp/OkHttpClientTransport;)I

    move-result v2

    const/4 v3, 0x0

    const v4, 0x7fffffff

    if-eq v2, v4, :cond_1

    .line 1175
    invoke-direct {p0, p5}, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->headerBlockSize(Ljava/util/List;)I

    move-result v2

    .line 1176
    .local v2, "metadataSize":I
    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v4}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2500(Lio/grpc/okhttp/OkHttpClientTransport;)I

    move-result v4

    if-le v2, v4, :cond_1

    .line 1177
    sget-object v4, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    const-string v5, "Response %s metadata larger than %d: %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 1180
    if-eqz p2, :cond_0

    const-string v7, "trailer"

    goto :goto_0

    :cond_0
    const-string v7, "header"

    :goto_0
    aput-object v7, v6, v3

    const/4 v7, 0x1

    iget-object v8, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    .line 1181
    invoke-static {v8}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2500(Lio/grpc/okhttp/OkHttpClientTransport;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 1182
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1178
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1177
    invoke-virtual {v4, v5}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 1185
    .end local v2    # "metadataSize":I
    :cond_1
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1186
    :try_start_0
    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v4}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2600(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/util/Map;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/okhttp/OkHttpClientStream;

    .line 1187
    .local v4, "stream":Lio/grpc/okhttp/OkHttpClientStream;
    if-nez v4, :cond_3

    .line 1188
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v3, p3}, Lio/grpc/okhttp/OkHttpClientTransport;->mayHaveCreatedStream(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1189
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v3

    sget-object v5, Lio/grpc/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v3, p3, v5}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    goto :goto_1

    .line 1191
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 1194
    :cond_3
    if-nez v1, :cond_4

    .line 1195
    const-string v3, "OkHttpClientTransport$ClientFrameHandler.headers"

    .line 1196
    invoke-virtual {v4}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v5

    invoke-virtual {v5}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object v5

    .line 1195
    invoke-static {v3, v5}, Lio/perfmark/PerfMark;->event(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 1199
    invoke-virtual {v4}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v3

    invoke-virtual {v3, p5, p2}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transportHeadersReceived(Ljava/util/List;Z)V

    goto :goto_1

    .line 1201
    :cond_4
    if-nez p2, :cond_5

    .line 1202
    iget-object v5, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v5}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v5

    sget-object v6, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v5, p3, v6}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 1204
    :cond_5
    invoke-virtual {v4}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v5

    new-instance v6, Lio/grpc/Metadata;

    invoke-direct {v6}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v5, v1, v3, v6}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    .line 1207
    .end local v4    # "stream":Lio/grpc/okhttp/OkHttpClientStream;
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1208
    if-eqz v0, :cond_6

    .line 1210
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    sget-object v3, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received header for unknown stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2300(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 1212
    :cond_6
    return-void

    .line 1207
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public ping(ZII)V
    .locals 12
    .param p1, "ack"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .line 1280
    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p3

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 1281
    .local v0, "ackPayload":J
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->logger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v3, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v2, v3, v0, v1}, Lio/grpc/okhttp/OkHttpFrameLogger;->logPing(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;J)V

    .line 1282
    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 1283
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1284
    :try_start_0
    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v4}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v4

    invoke-virtual {v4, v2, p2, p3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->ping(ZII)V

    .line 1285
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1287
    :cond_0
    const/4 v3, 0x0

    .line 1288
    .local v3, "p":Lio/grpc/internal/Http2Ping;
    iget-object v4, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v4}, Lio/grpc/okhttp/OkHttpClientTransport;->access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1289
    :try_start_1
    iget-object v5, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v5}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2700(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/Http2Ping;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1290
    iget-object v5, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v5}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2700(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/Http2Ping;

    move-result-object v5

    invoke-virtual {v5}, Lio/grpc/internal/Http2Ping;->payload()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-nez v7, :cond_1

    .line 1291
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2700(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/Http2Ping;

    move-result-object v2

    move-object v3, v2

    .line 1292
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2702(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/internal/Http2Ping;)Lio/grpc/internal/Http2Ping;

    goto :goto_0

    .line 1294
    :cond_1
    invoke-static {}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2100()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Received unexpected ping ack. Expecting %d, got %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    .line 1295
    invoke-static {v10}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2700(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/Http2Ping;

    move-result-object v10

    invoke-virtual {v10}, Lio/grpc/internal/Http2Ping;->payload()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v2

    .line 1294
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 1298
    :cond_2
    invoke-static {}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2100()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v5, "Received unexpected ping ack. No ping outstanding"

    invoke-virtual {v2, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1300
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1302
    if-eqz v3, :cond_3

    .line 1303
    invoke-virtual {v3}, Lio/grpc/internal/Http2Ping;->complete()Z

    .line 1306
    .end local v3    # "p":Lio/grpc/internal/Http2Ping;
    :cond_3
    :goto_1
    return-void

    .line 1300
    .restart local v3    # "p":Lio/grpc/internal/Http2Ping;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public priority(IIIZ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    .line 1383
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 3
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1336
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->logger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/grpc/okhttp/OkHttpFrameLogger;->logPushPromise(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;IILjava/util/List;)V

    .line 1339
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1340
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v1

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, p1, v2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 1341
    monitor-exit v0

    .line 1342
    return-void

    .line 1341
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 1227
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->logger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2}, Lio/grpc/okhttp/OkHttpFrameLogger;->logRstStream(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 1228
    invoke-static {p2}, Lio/grpc/okhttp/OkHttpClientTransport;->toGrpcStatus(Lio/grpc/okhttp/internal/framed/ErrorCode;)Lio/grpc/Status;

    move-result-object v0

    const-string v1, "Rst Stream"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->augmentDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 1229
    .local v0, "status":Lio/grpc/Status;
    nop

    .line 1230
    invoke-virtual {v0}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v1

    sget-object v2, Lio/grpc/Status$Code;->CANCELLED:Lio/grpc/Status$Code;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v1

    sget-object v2, Lio/grpc/Status$Code;->DEADLINE_EXCEEDED:Lio/grpc/Status$Code;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    const/4 v6, 0x1

    .line 1231
    .local v6, "stopDelivery":Z
    :goto_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1232
    :try_start_0
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2600(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/okhttp/OkHttpClientStream;

    move-object v9, v2

    .line 1233
    .local v9, "stream":Lio/grpc/okhttp/OkHttpClientStream;
    if-eqz v9, :cond_3

    .line 1234
    const-string v2, "OkHttpClientTransport$ClientFrameHandler.rstStream"

    .line 1235
    invoke-virtual {v9}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->tag()Lio/perfmark/Tag;

    move-result-object v3

    .line 1234
    invoke-static {v2, v3}, Lio/perfmark/PerfMark;->event(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 1236
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    .line 1238
    sget-object v3, Lio/grpc/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    if-ne p2, v3, :cond_2

    sget-object v3, Lio/grpc/internal/ClientStreamListener$RpcProgress;->REFUSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    goto :goto_2

    :cond_2
    sget-object v3, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    :goto_2
    move-object v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1236
    move v3, p1

    move-object v4, v0

    invoke-virtual/range {v2 .. v8}, Lio/grpc/okhttp/OkHttpClientTransport;->finishStream(ILio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Metadata;)V

    .line 1241
    .end local v9    # "stream":Lio/grpc/okhttp/OkHttpClientStream;
    :cond_3
    monitor-exit v1

    .line 1242
    return-void

    .line 1241
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public run()V
    .locals 7

    .line 1078
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1079
    .local v0, "threadName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "OkHttpClientTransport"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1082
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    invoke-interface {v2, p0}, Lio/grpc/okhttp/internal/framed/FrameReader;->nextFrame(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1083
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1900(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/KeepAliveManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1084
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1900(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/KeepAliveManager;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/KeepAliveManager;->onDataReceived()V

    goto :goto_0

    .line 1091
    :cond_1
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1092
    :try_start_1
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2000(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/Status;

    move-result-object v3

    .line 1093
    .local v3, "status":Lio/grpc/Status;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1094
    if-nez v3, :cond_2

    .line 1095
    :try_start_2
    sget-object v2, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v4, "End of stream or IOException"

    invoke-virtual {v2, v4}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    move-object v3, v2

    .line 1097
    :cond_2
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    sget-object v4, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-static {v2, v1, v4, v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1100(Lio/grpc/okhttp/OkHttpClientTransport;ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1106
    .end local v3    # "status":Lio/grpc/Status;
    :try_start_3
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    invoke-interface {v1}, Lio/grpc/okhttp/internal/framed/FrameReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1107
    :catch_0
    move-exception v1

    goto :goto_2

    .line 1093
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "threadName":Ljava/lang/String;
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1098
    .restart local v0    # "threadName":Ljava/lang/String;
    :catchall_1
    move-exception v2

    .line 1100
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_6
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    sget-object v4, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v5, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v6, "error in frame handler"

    .line 1103
    invoke-virtual {v5, v6}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v5

    invoke-virtual {v5, v2}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v5

    .line 1100
    invoke-static {v3, v1, v4, v5}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1100(Lio/grpc/okhttp/OkHttpClientTransport;ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1106
    .end local v2    # "t":Ljava/lang/Throwable;
    :try_start_7
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    invoke-interface {v1}, Lio/grpc/okhttp/internal/framed/FrameReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1109
    :goto_1
    goto :goto_3

    .line 1107
    :catch_1
    move-exception v1

    .line 1108
    .local v1, "ex":Ljava/io/IOException;
    :goto_2
    invoke-static {}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2100()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Exception closing frame reader"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1110
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_3
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$000(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/ManagedClientTransport$Listener;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportTerminated()V

    .line 1111
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1112
    nop

    .line 1113
    return-void

    .line 1105
    :catchall_2
    move-exception v1

    .line 1106
    :try_start_8
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    invoke-interface {v2}, Lio/grpc/okhttp/internal/framed/FrameReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1109
    goto :goto_4

    .line 1107
    :catch_2
    move-exception v2

    .line 1108
    .local v2, "ex":Ljava/io/IOException;
    invoke-static {}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2100()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "Exception closing frame reader"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1110
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_4
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$000(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/ManagedClientTransport$Listener;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportTerminated()V

    .line 1111
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v1
.end method

.method public settings(ZLio/grpc/okhttp/internal/framed/Settings;)V
    .locals 4
    .param p1, "clearPrevious"    # Z
    .param p2, "settings"    # Lio/grpc/okhttp/internal/framed/Settings;

    .line 1246
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->logger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, p2}, Lio/grpc/okhttp/OkHttpFrameLogger;->logSettings(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;Lio/grpc/okhttp/internal/framed/Settings;)V

    .line 1247
    const/4 v0, 0x0

    .line 1248
    .local v0, "outboundWindowSizeIncreased":Z
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1249
    const/4 v2, 0x4

    :try_start_0
    invoke-static {p2, v2}, Lio/grpc/okhttp/OkHttpSettingsUtil;->isSet(Lio/grpc/okhttp/internal/framed/Settings;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1250
    invoke-static {p2, v2}, Lio/grpc/okhttp/OkHttpSettingsUtil;->get(Lio/grpc/okhttp/internal/framed/Settings;I)I

    move-result v2

    .line 1252
    .local v2, "receivedMaxConcurrentStreams":I
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v3, v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1702(Lio/grpc/okhttp/OkHttpClientTransport;I)I

    .line 1255
    .end local v2    # "receivedMaxConcurrentStreams":I
    :cond_0
    const/4 v2, 0x7

    invoke-static {p2, v2}, Lio/grpc/okhttp/OkHttpSettingsUtil;->isSet(Lio/grpc/okhttp/internal/framed/Settings;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1256
    invoke-static {p2, v2}, Lio/grpc/okhttp/OkHttpSettingsUtil;->get(Lio/grpc/okhttp/internal/framed/Settings;I)I

    move-result v2

    .line 1258
    .local v2, "initialWindowSize":I
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/grpc/okhttp/OutboundFlowController;->initialOutboundWindowSize(I)Z

    move-result v3

    move v0, v3

    .line 1260
    .end local v2    # "initialWindowSize":I
    :cond_1
    iget-boolean v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->firstSettings:Z

    if-eqz v2, :cond_2

    .line 1261
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$000(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/internal/ManagedClientTransport$Listener;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportReady()V

    .line 1262
    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->firstSettings:Z

    .line 1268
    :cond_2
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->ackSettings(Lio/grpc/okhttp/internal/framed/Settings;)V

    .line 1271
    if-eqz v0, :cond_3

    .line 1272
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/okhttp/OutboundFlowController;->writeStreams()V

    .line 1274
    :cond_3
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$1800(Lio/grpc/okhttp/OkHttpClientTransport;)Z

    .line 1275
    monitor-exit v1

    .line 1276
    return-void

    .line 1275
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public windowUpdate(IJ)V
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "delta"    # J

    .line 1346
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->logger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/grpc/okhttp/OkHttpFrameLogger;->logWindowsUpdate(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;IJ)V

    .line 1347
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    .line 1348
    const-string v0, "Received 0 flow control window increment."

    .line 1349
    .local v0, "errorMsg":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1350
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-static {v1, v2, v0}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2300(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 1352
    :cond_0
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    sget-object v1, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 1353
    invoke-virtual {v1, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v5

    sget-object v6, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    const/4 v7, 0x0

    sget-object v8, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const/4 v9, 0x0

    .line 1352
    move v4, p1

    invoke-virtual/range {v3 .. v9}, Lio/grpc/okhttp/OkHttpClientTransport;->finishStream(ILio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Metadata;)V

    .line 1356
    :goto_0
    return-void

    .line 1359
    .end local v0    # "errorMsg":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 1360
    .local v0, "unknownStream":Z
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->access$100(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1361
    if-nez p1, :cond_2

    .line 1362
    :try_start_0
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v2

    const/4 v3, 0x0

    long-to-int v4, p2

    invoke-virtual {v2, v3, v4}, Lio/grpc/okhttp/OutboundFlowController;->windowUpdate(Lio/grpc/okhttp/OkHttpClientStream;I)I

    .line 1363
    monitor-exit v1

    return-void

    .line 1366
    :cond_2
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2600(Lio/grpc/okhttp/OkHttpClientTransport;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/okhttp/OkHttpClientStream;

    .line 1367
    .local v2, "stream":Lio/grpc/okhttp/OkHttpClientStream;
    if-eqz v2, :cond_3

    .line 1368
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$200(Lio/grpc/okhttp/OkHttpClientTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v3

    long-to-int v4, p2

    invoke-virtual {v3, v2, v4}, Lio/grpc/okhttp/OutboundFlowController;->windowUpdate(Lio/grpc/okhttp/OkHttpClientStream;I)I

    goto :goto_1

    .line 1369
    :cond_3
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v3, p1}, Lio/grpc/okhttp/OkHttpClientTransport;->mayHaveCreatedStream(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1370
    const/4 v0, 0x1

    .line 1372
    .end local v2    # "stream":Lio/grpc/okhttp/OkHttpClientStream;
    :cond_4
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1373
    if-eqz v0, :cond_5

    .line 1374
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientTransport$ClientFrameHandler;->this$0:Lio/grpc/okhttp/OkHttpClientTransport;

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received window_update for unknown stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/grpc/okhttp/OkHttpClientTransport;->access$2300(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 1377
    :cond_5
    return-void

    .line 1372
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
