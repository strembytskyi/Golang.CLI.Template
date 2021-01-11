package cmd

import "github.com/spf13/cobra"

var addCmd = &cobra.Command{
	Use:   "mdscommand",
	Short: "Example command",
	Long:  "Example command",
	Run: func(cmd *cobra.Command, args []string) {
		println("Example command")
	},
}

func init() {
	rootCmd.AddCommand(addCmd)
}
