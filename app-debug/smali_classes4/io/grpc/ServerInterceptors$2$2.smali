.class Lio/grpc/ServerInterceptors$2$2;
.super Lio/grpc/PartialForwardingServerCallListener;
.source "ServerInterceptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/ServerInterceptors$2;->startCall(Lio/grpc/ServerCall;Lio/grpc/Metadata;)Lio/grpc/ServerCall$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/PartialForwardingServerCallListener<",
        "TWReqT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/ServerInterceptors$2;

.field final synthetic val$originalListener:Lio/grpc/ServerCall$Listener;


# direct methods
.method constructor <init>(Lio/grpc/ServerInterceptors$2;Lio/grpc/ServerCall$Listener;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/ServerInterceptors$2;

    .line 290
    iput-object p1, p0, Lio/grpc/ServerInterceptors$2$2;->this$0:Lio/grpc/ServerInterceptors$2;

    iput-object p2, p0, Lio/grpc/ServerInterceptors$2$2;->val$originalListener:Lio/grpc/ServerCall$Listener;

    invoke-direct {p0}, Lio/grpc/PartialForwardingServerCallListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected delegate()Lio/grpc/ServerCall$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ServerCall$Listener<",
            "TOReqT;>;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lio/grpc/ServerInterceptors$2$2;->val$originalListener:Lio/grpc/ServerCall$Listener;

    return-object v0
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWReqT;)V"
        }
    .end annotation

    .line 298
    .local p1, "message":Ljava/lang/Object;, "TWReqT;"
    iget-object v0, p0, Lio/grpc/ServerInterceptors$2$2;->this$0:Lio/grpc/ServerInterceptors$2;

    iget-object v0, v0, Lio/grpc/ServerInterceptors$2;->val$wrappedMethod:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0, p1}, Lio/grpc/MethodDescriptor;->streamRequest(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    .line 299
    .local v0, "is":Ljava/io/InputStream;
    iget-object v1, p0, Lio/grpc/ServerInterceptors$2$2;->this$0:Lio/grpc/ServerInterceptors$2;

    iget-object v1, v1, Lio/grpc/ServerInterceptors$2;->val$originalMethod:Lio/grpc/MethodDescriptor;

    invoke-virtual {v1, v0}, Lio/grpc/MethodDescriptor;->parseRequest(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 300
    .local v1, "originalMessage":Ljava/lang/Object;, "TOReqT;"
    invoke-virtual {p0}, Lio/grpc/ServerInterceptors$2$2;->delegate()Lio/grpc/ServerCall$Listener;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/grpc/ServerCall$Listener;->onMessage(Ljava/lang/Object;)V

    .line 301
    return-void
.end method
