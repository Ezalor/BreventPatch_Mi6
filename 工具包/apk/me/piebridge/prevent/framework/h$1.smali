.class Lme/piebridge/prevent/framework/h$1;
.super Ljava/lang/Object;
.source "SystemReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/framework/h;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/piebridge/prevent/framework/h;


# direct methods
.method constructor <init>(Lme/piebridge/prevent/framework/h;)V
    .registers 2

    .prologue
    .line 395
    iput-object p1, p0, Lme/piebridge/prevent/framework/h$1;->a:Lme/piebridge/prevent/framework/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 398
    const-string v0, "prevent"

    const-string v1, "-s Prevent:v PreventUI:v"

    invoke-static {v0, v1}, Lme/piebridge/prevent/framework/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v0, "system"

    const-string v1, "ContentResolver:s *:v"

    invoke-static {v0, v1}, Lme/piebridge/prevent/framework/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lme/piebridge/prevent/framework/h$1;->a:Lme/piebridge/prevent/framework/h;

    iget-object v0, v0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    const-string v1, "boot"

    invoke-static {v0, v1}, Lme/piebridge/prevent/framework/a/i;->a(Landroid/content/Context;Ljava/lang/String;)J

    .line 401
    iget-object v0, p0, Lme/piebridge/prevent/framework/h$1;->a:Lme/piebridge/prevent/framework/h;

    iget-object v0, v0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    const-string v1, "prevent"

    invoke-static {v0, v1}, Lme/piebridge/prevent/framework/a/i;->a(Landroid/content/Context;Ljava/lang/String;)J

    .line 402
    iget-object v0, p0, Lme/piebridge/prevent/framework/h$1;->a:Lme/piebridge/prevent/framework/h;

    iget-object v0, v0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    const-string v1, "system"

    invoke-static {v0, v1}, Lme/piebridge/prevent/framework/a/i;->a(Landroid/content/Context;Ljava/lang/String;)J

    .line 403
    iget-object v0, p0, Lme/piebridge/prevent/framework/h$1;->a:Lme/piebridge/prevent/framework/h;

    iget-object v0, v0, Lme/piebridge/prevent/framework/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/piebridge/prevent/framework/a/i;->a(Landroid/content/Context;)V

    .line 404
    return-void
.end method
