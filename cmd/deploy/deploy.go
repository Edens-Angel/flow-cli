/*
Copyright © 2024 Paul <EMAIL ADDRESS>
*/
package deploy

import (
	"github.com/flow-cli/internal/deploy"
	"github.com/spf13/cobra"
)

var plan, approve bool

var DeployCmd = &cobra.Command{
	Use:   "deploy",
	Args:  cobra.ExactArgs(1),
	Short: "Deploys the application in the given environment",
	Long:  `Deploys the application in the given environment`,
	Run: func(cmd *cobra.Command, args []string) {
		environment := args[0]

		if plan {
			deploy.TfPlan(environment)
			return
		}
		deploy.TfApply(environment, approve)
	},
}

func init() {
	DeployCmd.Flags().BoolVarP(&plan, "plan", "p", false, "Plans terraform deployment")
	DeployCmd.Flags().BoolVarP(&approve, "approve", "a", false, "Auto approves terrafrom deployment")
}
