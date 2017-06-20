.class Lme/piebridge/prevent/ui/PreventActivity$a$1;
.super Ljava/lang/Object;
.source "PreventActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/ui/PreventActivity$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/piebridge/prevent/ui/PreventActivity$a;


# direct methods
.method constructor <init>(Lme/piebridge/prevent/ui/PreventActivity$a;)V
    .registers 2

    .prologue
    .line 619
    iput-object p1, p0, Lme/piebridge/prevent/ui/PreventActivity$a$1;->a:Lme/piebridge/prevent/ui/PreventActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 622
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a$1;->a:Lme/piebridge/prevent/ui/PreventActivity$a;

    iget-object v0, v0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->g(Lme/piebridge/prevent/ui/PreventActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 623
    iget-object v0, p0, Lme/piebridge/prevent/ui/PreventActivity$a$1;->a:Lme/piebridge/prevent/ui/PreventActivity$a;

    iget-object v0, v0, Lme/piebridge/prevent/ui/PreventActivity$a;->a:Lme/piebridge/prevent/ui/PreventActivity;

    invoke-static {v0}, Lme/piebridge/prevent/ui/PreventActivity;->f(Lme/piebridge/prevent/ui/PreventActivity;)V

    .line 624
    return-void
.end method
