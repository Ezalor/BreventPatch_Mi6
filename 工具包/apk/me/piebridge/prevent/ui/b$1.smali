.class Lme/piebridge/prevent/ui/b$1;
.super Ljava/lang/Object;
.source "PreventFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/piebridge/prevent/ui/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/piebridge/prevent/ui/b;


# direct methods
.method constructor <init>(Lme/piebridge/prevent/ui/b;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lme/piebridge/prevent/ui/b$1;->a:Lme/piebridge/prevent/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 120
    iget-object v0, p0, Lme/piebridge/prevent/ui/b$1;->a:Lme/piebridge/prevent/ui/b;

    iget-object v1, p0, Lme/piebridge/prevent/ui/b$1;->a:Lme/piebridge/prevent/ui/b;

    invoke-static {v1}, Lme/piebridge/prevent/ui/b;->a(Lme/piebridge/prevent/ui/b;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lme/piebridge/prevent/ui/b;->a(Lme/piebridge/prevent/ui/b;Z)V

    .line 121
    return-void
.end method
