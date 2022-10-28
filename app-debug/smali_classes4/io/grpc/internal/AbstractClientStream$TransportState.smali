.class public abstract Lio/grpc/internal/AbstractClientStream$TransportState;
.super Lio/grpc/internal/AbstractStream$TransportState;
.source "AbstractClientStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AbstractClientStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "TransportState"
.end annotation


# instance fields
.field private decompressorRegistry:Lio/grpc/DecompressorRegistry;

.field private deframerClosed:Z

.field private deframerClosedTask:Ljava/lang/Runnable;

.field private fullStreamDecompression:Z

.field private listener:Lio/grpc/internal/ClientStreamListener;

.field private listenerClosed:Z

.field private volatile outboundClosed:Z

.field private final statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

.field private statusReported:Z

.field private statusReportedIsOk:Z


# direct methods
.method protected constructor <init>(ILio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;)V
    .locals 1
    .param p1, "maxMessageSize"    # I
    .param p2, "statsTraceCtx"    # Lio/grpc/internal/StatsTraceContext;
    .param p3, "transportTracer"    # Lio/grpc/internal/TransportTracer;

    .line 247
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/internal/AbstractStream$TransportState;-><init>(ILio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;)V

    .line 227
    invoke-static {}, Lio/grpc/DecompressorRegistry;->getDefaultInstance()Lio/grpc/DecompressorRegistry;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->deframerClosed:Z

    .line 248
    const-string v0, "statsTraceCtx"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/StatsTraceContext;

    iput-object v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    .line 249
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/AbstractClientStream$TransportState;Z)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/AbstractClientStream$TransportState;
    .param p1, "x1"    # Z

    .line 221
    invoke-direct {p0, p1}, Lio/grpc/internal/AbstractClientStream$TransportState;->setFullStreamDecompression(Z)V

    return-void
.end method

.method static synthetic access$100(Lio/grpc/internal/AbstractClientStream$TransportState;Lio/grpc/DecompressorRegistry;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/AbstractClientStream$TransportState;
    .param p1, "x1"    # Lio/grpc/DecompressorRegistry;

    .line 221
    invoke-direct {p0, p1}, Lio/grpc/internal/AbstractClientStream$TransportState;->setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V

    return-void
.end method

.method static synthetic access$200(Lio/grpc/internal/AbstractClientStream$TransportState;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/AbstractClientStream$TransportState;

    .line 221
    invoke-direct {p0}, Lio/grpc/internal/AbstractClientStream$TransportState;->setOutboundClosed()V

    return-void
.end method

.method static synthetic access$400(Lio/grpc/internal/AbstractClientStream$TransportState;Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/AbstractClientStream$TransportState;
    .param p1, "x1"    # Lio/grpc/Status;
    .param p2, "x2"    # Lio/grpc/internal/ClientStreamListener$RpcProgress;
    .param p3, "x3"    # Lio/grpc/Metadata;

    .line 221
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/internal/AbstractClientStream$TransportState;->closeListener(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    return-void
.end method

.method private closeListener(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
    .locals 2
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "rpcProgress"    # Lio/grpc/internal/ClientStreamListener$RpcProgress;
    .param p3, "trailers"    # Lio/grpc/Metadata;

    .line 456
    iget-boolean v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->listenerClosed:Z

    if-nez v0, :cond_0

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->listenerClosed:Z

    .line 458
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v0, p1}, Lio/grpc/internal/StatsTraceContext;->streamClosed(Lio/grpc/Status;)V

    .line 459
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream$TransportState;->listener()Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    .line 460
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream$TransportState;->getTransportTracer()Lio/grpc/internal/TransportTracer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream$TransportState;->getTransportTracer()Lio/grpc/internal/TransportTracer;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/internal/TransportTracer;->reportStreamClosed(Z)V

    .line 464
    :cond_0
    return-void
.end method

.method private setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V
    .locals 2
    .param p1, "decompressorRegistry"    # Lio/grpc/DecompressorRegistry;

    .line 256
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Already called start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 257
    nop

    .line 258
    const-string v0, "decompressorRegistry"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/DecompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 259
    return-void
.end method

.method private setFullStreamDecompression(Z)V
    .locals 0
    .param p1, "fullStreamDecompression"    # Z

    .line 252
    iput-boolean p1, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->fullStreamDecompression:Z

    .line 253
    return-void
.end method

.method private final setOutboundClosed()V
    .locals 1

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->outboundClosed:Z

    .line 290
    return-void
.end method


# virtual methods
.method public deframerClosed(Z)V
    .locals 3
    .param p1, "hasPartialMessage"    # Z

    .line 269
    iget-boolean v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->statusReported:Z

    const-string v1, "status should have been reported on deframer closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->deframerClosed:Z

    .line 271
    iget-boolean v1, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->statusReportedIsOk:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 272
    sget-object v1, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 273
    const-string v2, "Encountered end-of-stream mid-frame"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    .line 272
    invoke-virtual {p0, v1, v0, v2}, Lio/grpc/internal/AbstractClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->deframerClosedTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 278
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->deframerClosedTask:Ljava/lang/Runnable;

    .line 281
    :cond_1
    return-void
.end method

.method protected inboundDataReceived(Lio/grpc/internal/ReadableBuffer;)V
    .locals 4
    .param p1, "frame"    # Lio/grpc/internal/ReadableBuffer;

    .line 352
    const-string v0, "frame"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const/4 v0, 0x1

    .line 355
    .local v0, "needToCloseFrame":Z
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->statusReported:Z

    if-eqz v1, :cond_1

    .line 356
    invoke-static {}, Lio/grpc/internal/AbstractClientStream;->access$300()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Received data on closed stream"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    if-eqz v0, :cond_0

    .line 364
    invoke-interface {p1}, Lio/grpc/internal/ReadableBuffer;->close()V

    .line 357
    :cond_0
    return-void

    .line 360
    :cond_1
    const/4 v0, 0x0

    .line 361
    :try_start_1
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractClientStream$TransportState;->deframe(Lio/grpc/internal/ReadableBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    if-eqz v0, :cond_2

    .line 364
    invoke-interface {p1}, Lio/grpc/internal/ReadableBuffer;->close()V

    .line 367
    :cond_2
    return-void

    .line 363
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 364
    invoke-interface {p1}, Lio/grpc/internal/ReadableBuffer;->close()V

    :cond_3
    throw v1
.end method

.method protected inboundHeadersReceived(Lio/grpc/Metadata;)V
    .locals 7
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 302
    iget-boolean v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->statusReported:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Received headers on closed stream"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v0}, Lio/grpc/internal/StatsTraceContext;->clientInboundHeaders()V

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "compressedStream":Z
    sget-object v2, Lio/grpc/internal/GrpcUtil;->CONTENT_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p1, v2}, Lio/grpc/Metadata;->get(Lio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 307
    .local v2, "streamEncoding":Ljava/lang/String;
    iget-boolean v3, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->fullStreamDecompression:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 308
    const-string v3, "gzip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    new-instance v3, Lio/grpc/internal/GzipInflatingBuffer;

    invoke-direct {v3}, Lio/grpc/internal/GzipInflatingBuffer;-><init>()V

    invoke-virtual {p0, v3}, Lio/grpc/internal/AbstractClientStream$TransportState;->setFullStreamDecompressor(Lio/grpc/internal/GzipInflatingBuffer;)V

    .line 310
    const/4 v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    const-string v3, "identity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 312
    sget-object v3, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    .line 315
    const-string v4, "Can\'t find full stream decompressor for %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-virtual {v3, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v1

    .line 312
    invoke-virtual {p0, v1}, Lio/grpc/internal/AbstractClientStream$TransportState;->deframeFailed(Ljava/lang/Throwable;)V

    .line 317
    return-void

    .line 321
    :cond_1
    :goto_0
    sget-object v3, Lio/grpc/internal/GrpcUtil;->MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p1, v3}, Lio/grpc/Metadata;->get(Lio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 322
    .local v3, "messageEncoding":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 323
    iget-object v5, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    invoke-virtual {v5, v3}, Lio/grpc/DecompressorRegistry;->lookupDecompressor(Ljava/lang/String;)Lio/grpc/Decompressor;

    move-result-object v5

    .line 324
    .local v5, "decompressor":Lio/grpc/Decompressor;
    if-nez v5, :cond_2

    .line 325
    sget-object v6, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v4

    .line 327
    const-string v4, "Can\'t find decompressor for %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v1

    .line 325
    invoke-virtual {p0, v1}, Lio/grpc/internal/AbstractClientStream$TransportState;->deframeFailed(Ljava/lang/Throwable;)V

    .line 329
    return-void

    .line 330
    :cond_2
    sget-object v1, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    if-eq v5, v1, :cond_4

    .line 331
    if-eqz v0, :cond_3

    .line 332
    sget-object v1, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    new-array v4, v4, [Ljava/lang/Object;

    .line 335
    const-string v6, "Full stream and gRPC message encoding cannot both be set"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 334
    invoke-virtual {v1, v4}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 336
    invoke-virtual {v1}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v1

    .line 332
    invoke-virtual {p0, v1}, Lio/grpc/internal/AbstractClientStream$TransportState;->deframeFailed(Ljava/lang/Throwable;)V

    .line 337
    return-void

    .line 339
    :cond_3
    invoke-virtual {p0, v5}, Lio/grpc/internal/AbstractClientStream$TransportState;->setDecompressor(Lio/grpc/Decompressor;)V

    .line 343
    .end local v5    # "decompressor":Lio/grpc/Decompressor;
    :cond_4
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream$TransportState;->listener()Lio/grpc/internal/ClientStreamListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/grpc/internal/ClientStreamListener;->headersRead(Lio/grpc/Metadata;)V

    .line 344
    return-void
.end method

.method protected inboundTrailersReceived(Lio/grpc/Metadata;Lio/grpc/Status;)V
    .locals 4
    .param p1, "trailers"    # Lio/grpc/Metadata;
    .param p2, "status"    # Lio/grpc/Status;

    .line 376
    const-string v0, "status"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v0, "trailers"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-boolean v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->statusReported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 379
    invoke-static {}, Lio/grpc/internal/AbstractClientStream;->access$300()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    const-string v1, "Received trailers on closed stream:\n {1}\n {2}"

    invoke-virtual {v0, v2, v1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    invoke-virtual {v0, p1}, Lio/grpc/internal/StatsTraceContext;->clientInboundTrailers(Lio/grpc/Metadata;)V

    .line 384
    invoke-virtual {p0, p2, v1, p1}, Lio/grpc/internal/AbstractClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    .line 385
    return-void
.end method

.method protected final isOutboundClosed()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->outboundClosed:Z

    return v0
.end method

.method protected final listener()Lio/grpc/internal/ClientStreamListener;
    .locals 1

    .line 285
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->listener:Lio/grpc/internal/ClientStreamListener;

    return-object v0
.end method

.method protected bridge synthetic listener()Lio/grpc/internal/StreamListener;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream$TransportState;->listener()Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    return-object v0
.end method

.method public final setListener(Lio/grpc/internal/ClientStreamListener;)V
    .locals 2
    .param p1, "listener"    # Lio/grpc/internal/ClientStreamListener;

    .line 263
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Already called setListener"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 264
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ClientStreamListener;

    iput-object v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->listener:Lio/grpc/internal/ClientStreamListener;

    .line 265
    return-void
.end method

.method public final transportReportStatus(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/Metadata;)V
    .locals 1
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "rpcProgress"    # Lio/grpc/internal/ClientStreamListener$RpcProgress;
    .param p3, "stopDelivery"    # Z
    .param p4, "trailers"    # Lio/grpc/Metadata;

    .line 424
    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v0, "trailers"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-boolean v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->statusReported:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 428
    return-void

    .line 430
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->statusReported:Z

    .line 431
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    iput-boolean v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->statusReportedIsOk:Z

    .line 432
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream$TransportState;->onStreamDeallocated()V

    .line 434
    iget-boolean v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->deframerClosed:Z

    if-eqz v0, :cond_1

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->deframerClosedTask:Ljava/lang/Runnable;

    .line 436
    invoke-direct {p0, p1, p2, p4}, Lio/grpc/internal/AbstractClientStream$TransportState;->closeListener(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    goto :goto_0

    .line 438
    :cond_1
    new-instance v0, Lio/grpc/internal/AbstractClientStream$TransportState$1;

    invoke-direct {v0, p0, p1, p2, p4}, Lio/grpc/internal/AbstractClientStream$TransportState$1;-><init>(Lio/grpc/internal/AbstractClientStream$TransportState;Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    iput-object v0, p0, Lio/grpc/internal/AbstractClientStream$TransportState;->deframerClosedTask:Ljava/lang/Runnable;

    .line 445
    invoke-virtual {p0, p3}, Lio/grpc/internal/AbstractClientStream$TransportState;->closeDeframer(Z)V

    .line 447
    :goto_0
    return-void
.end method

.method public final transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V
    .locals 1
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "stopDelivery"    # Z
    .param p3, "trailers"    # Lio/grpc/Metadata;

    .line 401
    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-virtual {p0, p1, v0, p2, p3}, Lio/grpc/internal/AbstractClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/Metadata;)V

    .line 402
    return-void
.end method
